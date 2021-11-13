# ConstitutionDAO: Contracts

## TL;DR

This repo is for the ConstitutionDAO contracts.

## Learn more
- [Website](https://constitutiondao.com/)
- [Discord](https://discord.gg/XQcmCmWDn8)
- [Twitter](https://twitter.com/constitutiondao)
- [FAQs](https://docs.google.com/document/d/1i1zLBXpdFdojvQVXpYBbeABEi7io60j0gOnM4uyZBdI)

## How to contribute

1. Please join #dev on the discord
2. Ask [@sethfork](https://github.com/sethfork) to add you to the GitHub org / repos
3. Read `Getting started` below

## Docs

### Getting started

1. We're looking at using Mirror or Juicebox.money to do a crowdfund for the token. We are coordinating with juicebox.money right now to use their platform to crowdfund - those contracts are likely much more solid than anything we can write up right now in the moment. But we should have the community look over the contracts @jango is the contact for getting oriented there

2. In the meantime we have a repo where we can start organizing devs and getting people on the same page with things. There's a HIGH chance we don't end up using any smart contracts that we write in there, but it's a good place to start discussions about governance and technical specifics about what we want to do. Hit up @sethfork to get oriented there.

3. If you don't want to do #1 or #2, then look at `What are people working on?` and `What are things we might want to start doing?` below. Then find something that interests you and matches your skillset. Then, @ the most relevant team member (roles listed below) in #dev on discord

### What are people working on?

- `@alicemama` is in charge of the website
- `@pmoncada` is leading #dev right now
- `@sethfork` owns the org / repos
- `@jango` for juicebox.money and web3 workshops
- `@bwags` is setting up multisig
- `@ncitron` is working on tests for the contracts
- `@ty` is managing this README

### What are things we might want to start doing?
- Make proposals in PRs and we can get moving on decision making wrt governance/tokens/etc.
- Join us for the web3 workshops with @jango (will post in #dev with more info soon)
- No tests have been written yet for the contracts, so we could get started on that
- It would be great to coordinate with #design-and-marketing-🎨 for a quick prototype of a minimal fundraising page

### FAQs

**Q: What is our highest priority?**

A: Security is the highest priority. This is going to be a high-profile raise and someone will try to exploit us in every way. Trusting someone with the $20M is unavoidable for making the bid. Either we need to convert to fiat ourselves and move to a bank, or we can partner with a non-profit to handle this for us. It is preferable to give contributors ownership of the DAO as they add funds instead of anything retroactive. Therefore at the moment we are leaning most towards using Juicebox due to their ease of minting tokens on contribution, fund overflow mechanics, and demonstrated battle-testing. As of right now, ConstitutionDAO core team is talking with some core developers at Juicebox to work out the details.

**Q: The soft commit form has options for non-eth. Is fiat contribution even possible?**

A: Depends what platform we end up choosing. We're waiting to hear back from some other discussions. Stay tuned!

**Q: What is our ENS?**

A: Our ens is `constitutiondao.eth` thanks to @alicemama
