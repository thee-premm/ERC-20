# MNP Token — An Experiment in Curiosity

> “This is not just a token.  
> It’s a question I asked the blockchain.”

---

## What is MNP?

MNP is a minimalist, curiosity-driven ERC-20–style token written from scratch in Solidity.  
No OpenZeppelin imports. No magic. Just logic, math, and intent.

This contract exists because I wanted to understand tokens from first principles, not just use them.

---

## Philosophy

Most tokens are copy-paste.  
This one is hand-built.

- Every variable exists for a reason
- Every function is intentional
- Every line is readable

If something breaks, I want to know why, not blame a library.

---

## Token Details

| Property       | Value                                   |
| -------------- | --------------------------------------- |
| Name           | Merp                                    |
| Symbol         | MNP                                     |
| Decimals       | 6                                       |
| Initial Supply | 85,208,520 × 10⁶                        |
| Standard       | ERC-20–inspired (manual implementation) |

---

## Built-in Burn Mechanism

Every transfer burns a tiny fraction of tokens:

```
burn = amount / 100,000
```

- Burn happens automatically
- Supply decreases over time
- Long-term scarcity is baked in

This is not for hype — it’s for experimentation.

---

## Core Features

### Implemented

- transfer
- approve
- transferFrom
- allowance
- balanceOf
- totalSupply
- Event emissions (Transfer, Approval)
- Supply burn on transfer

### Not Included (by design)

- No minting
- No pausing
- No ownership modifiers
- No upgradeability
- No libraries

Simplicity over complexity.

---

## Constructor Logic

At deployment:

- Total supply is minted once
- Assigned fully to an initial holder
- Emitted as a Transfer from address(0)

No hidden inflation. Ever.

---

## A Curious Invitation

I am genuinely curious to share you huys this tokens, one thing:

Let us make this rare, LOL !

No roadmap.  
No promises.  
Just interaction.

If you:

- Deploy this
- Fork it
- Send MNP to a friend
- Test it on a local chain or testnet

You are already part of the experiment.

Let’s interact in the Web3 world, one transaction at a time.

---

## Why This Exists

I’m learning Solidity the hard way:

- By writing
- By breaking
- By fixing
- By understanding

This contract is a snapshot of that journey.

---

## Disclaimer

This token is:

- Not audited
- Not production-ready
- Not financial advice

It is:

- Educational
- Experimental
- Honest

Use it to learn.  
Use it to think.  
Use it to ask better questions.

---

## Final Note

If you are reading this and thinking  
“Why would someone write an ERC-20 like this?”

Then this repository already did its job.

Built with curiosity.  
Deployed with intent.  
Shared for learning.
