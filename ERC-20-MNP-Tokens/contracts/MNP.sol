// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

contract MNP {
    //
    string public name = "Merp";
    string public symbol = "MNP";
    uint8 public decimals = 6;

    uint256 public _totalSupply;

    mapping(address => uint) _balanceMapping;
    mapping(address => mapping(address => uint)) _allowanceMapping;

    event Transfer(address indexed from, address indexed to, uint256 _value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 _value
    );

    constructor(address _iHolder) {
        require(_iHolder != address(0), "!0add");

        _totalSupply = 85208520 * 1e6;

        _balanceMapping[_iHolder] = _totalSupply;

        emit Transfer(address(0), _iHolder, _totalSupply);
    }

    // view functions
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address _oa) public view returns (uint) {
        return (_balanceMapping[_oa]);
    }

    function allowance(
        address owner,
        address spender
    ) public view returns (uint256) {
        return _allowanceMapping[owner][spender];
    }

    // external functions
    function transfer(address _to, uint _value) external returns (bool) {
        _transfer(msg.sender, _to, _value);
        return true;
    }

    function approve(address spender, uint amount) external returns (bool) {
        require(spender != address(0), "!0App");

        _allowanceMapping[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(
        address _from,
        address _to,
        uint amount
    ) external returns (bool) {
        uint allowed = _allowanceMapping[_from][msg.sender];
        require(allowed >= amount, "!insuffAll");

        _allowanceMapping[_from][msg.sender] = allowed - amount;

        emit Approval(_from, msg.sender, _allowanceMapping[_from][msg.sender]);

        _transfer(_from, _to, amount);
        return true;
    }

    // internal functions
    function _transfer(address from, address to, uint amount) internal {
        require(from != address(0) && to != address(0), "!0Tran");
        require(_balanceMapping[from] >= amount, "!insuffBal");

        uint burn = amount / 100_000;

        if (burn > 0) {
            _totalSupply -= burn;
            emit Transfer(from, address(0), burn);
        }

        uint actualAmt = amount - burn;

        emit Transfer(from, to, actualAmt);

        _balanceMapping[from] -= amount;
        _balanceMapping[to] += actualAmt;
    }
}
