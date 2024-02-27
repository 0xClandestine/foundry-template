## Foundry Template

For guidance, refer to the [Foundry Documentation](https://book.getfoundry.sh/).

## Usage

```shell
forge build
```

### Test

```shell
forge test
```

### Format

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