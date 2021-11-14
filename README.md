# lastest state in `#dev`

`Note from m1guelpf#4217`

*Hey devs! We experimented with a bunch of ideas regarding different ways to approach raising the funds, but have decided to end up going with Juicebox, which has already been audited and should be much more solid than anything we can get out in a few days. I'm super thankful of everyone who has dedicated their time to building the "unofficial" contracts, but since we're not going to be using those and we don't want any confusion, we would like to ask y'all to rename the GitHub organization (since right now it looks a bit more official than it actually is).*

*We're closing off the crowdfund efforts, and we could really use everyone's help in spreading the word when we annunce them in a few hours, so we'd like to ask y'all to direct your efforts to marketing. Get creative! Let's get as many people as possible to know about this 🔥*

## How to contribute

1. Please join #dev on the discord
2. Ask [@sethfork](https://github.com/sethfork) to add you to the GitHub org / repos
3. Read `Getting started` below

## Docs

### Getting started

1. [Juicebox Protocol](https://juicebox.money/) was best equipped to roll up their sleeves on work with us on deploying the contract that will enable us to pursue this monumental undertaking (and waive all of their fees 🙏). Their work with SharkDAO and others is a testament to what they can accomplish and we're glad to have them on board. The community should look over the contracts. `@jango` is the contact for getting oriented there.

2. In the meantime, we have a repo where we can start organizing devs and getting people on the same page with things. This GitHub repo is NOT going to be used for the crowdfund. Not the frontend or the solidity contracts. We are not building anything custom for the token raising. The GitHub is only for coordinating the future plans with some of the awesome solidity and frontend devs that want to help us make this even better the next time we do something like this. Looking to the future with that one.

3. If you don't want to do #1 or #2, then look at `What are people working on?` and `What are things we might want to start doing?` below. Find something that interests you / matches your skillset and reach out to the most relevant team member (roles listed below) in #dev on discord.

### What are people working on?

- `@alicemama` is in leading the website
- `@pmoncada` is leading in the #dev channel right now
- `@sethfork` owns the org / repos
- `@jango` is leading juicebox.money
- `@bwags` is setting up multisig
- `@ty` is managing this README

### What are things we might want to start doing?
- We could use help auditing the Juicebox protocol and contracts
- Make proposals in PRs and we can get moving on decision making wrt governance/tokens/etc. for the future

### Juicebox FAQs

#### Q: Where can I learn more about Juicebox

Here is [an idea of how ConstitutionDAO will use the many Juicebox tools](https://juiceboxdao.notion.site/ConstitutionDAO-on-Juicebox-4490ae7fb2ea4c7d82aa6fff5bfae477). You can also check out [these docs](https://www.figma.com/file/dHsQ7Bt3ryXbZ2sRBAfBq5/Juicebox-Technical-Docs) to get started.

#### Q: Which fund tokens do we accept?

A: ETH

#### Q: What is the ratio of gov/tokens to fund tokens?

A: 1,000,000 token per ETH

#### Q: Is there a cap?

A: No cap

#### Do we want to take any measures to make sure the majority of gov tokens don't wind up in the hands of a few?

A: Not possible.

#### How can you audit the Juicebox protocol?

A: The tests for V1 are really thorough for those auditors who want to go through quickly
- unit: https://github.com/jbx-protocol/juice-contracts/tree/main/test/unit/v1
- integration/load: https://github.com/jbx-protocol/juice-contracts/tree/main/test/integration/v1.

#### Q: How can I try out Juicebox?

A: Anyone can [try juicebox on rinkeby](http://rinkeby.juicebox.money/) by clicking the `design your project` button

#### Q: Could we do a partial refund when ppl claim their tokens. Lets say we raise 20M and only use 15M. How can we give the excess back?

A: We'd create a pool with the extra funds for token holders to claim. Or, leave in in the DAO's treasury for token holders to govern in other ways.

#### Q: Is there a way the dao could decide what to do with the excess with Juicebox?

A: Juicebox doesn't have an opinion on this. It just issues tokens and manages the funds ==> gives people an option to burn their tokens for some of whats in the treasury. We can build contracts that use the tokens for decision making, or just use snapshot votes + multisig. There's an interface that we can implement to enforce on-chain governance strongly for changes in treasury configurations. Each Juicebox project is represented as an NFT, the owner of which can admin the treasury over time. If this owner is a governance contract with strong rules, all decisions will have to go through it

#### Q: what's the biggest project juicebox has handled? how much is not being audited a problem?

A: The protocol was deployed in July, SharkDAO ($5M in ETH) is the biggest we've seen to date. Also TileDAO and JuiceboxDAO itself

#### Does Juicebox exist on any L2s yet? Arbitrum? Etc?

A: not yet but erc20 project tokens on L1 can naturally be bridged to L2s or sidechains

### General FAQs

#### Q: Are we creating anything custom?

A: No. We cannot make our own super secure solidity contracts in 5 days. We are going to use battletested tools. Juicebox.money did a big workshop earlier explaining all their contracts

#### Q: What is our highest priority?

A: Security is the highest priority. This is going to be a high-profile raise and someone will try to exploit us in every way. Trusting someone with the $20M is unavoidable for making the bid. Either we need to convert to fiat ourselves and move to a bank, or we can partner with a non-profit to handle this for us. It is preferable to give contributors ownership of the DAO as they add funds instead of anything retroactive. Therefore at the moment we are leaning most towards using Juicebox due to their ease of minting tokens on contribution, fund overflow mechanics, and demonstrated battle-testing. As of right now, ConstitutionDAO core team is talking with some core developers at Juicebox to work out the details.

#### Q: What is our ENS?

A: Our ens is `constitutiondao.eth` thanks to @alicemama

## Learn more
- [Website](https://constitutiondao.com/)
- [Discord](https://discord.gg/XQcmCmWDn8)
- [Twitter](https://twitter.com/constitutiondao)
- [FAQs](https://docs.google.com/document/d/1i1zLBXpdFdojvQVXpYBbeABEi7io60j0gOnM4uyZBdI)
