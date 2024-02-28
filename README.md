# Foundry Template [![Github Actions][gha-badge]][gha] [![Foundry][foundry-badge]][foundry] [![License: MIT][license-badge]][license]

[gitpod]: https://gitpod.io/#https://github.com/PaulRBerg/foundry-template
[gha]: https://github.com/PaulRBerg/foundry-template/actions
[gha-badge]: https://github.com/PaulRBerg/foundry-template/actions/workflows/ci.yml/badge.svg
[foundry]: https://getfoundry.sh/
[foundry-badge]: https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg
[license]: https://opensource.org/license/unlicense
[license-badge]: https://img.shields.io/badge/License-Unlicense-blue.svg

For guidance, refer to the [Foundry Documentation](https://book.getfoundry.sh/).

## Usage

```shell
forge build
```

### Test

```shell
forge test
```

### Lint

```shell
forge fmt
```

### Deploy

```shell
source .env
forge script DeployCounter --rpc-url $RPC_URL --private-key $PRIVATE_KEY --etherscan-api-key $ETHERSCAN_KEY
```

### License

[The Unlicense](./LICENSE)