require("@nomiclabs/hardhat-waffle");
require("hardhat-gas-reporter");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 module.exports = {
  solidity: "0.8.0",
  paths: {
    artifacts: "./artifacts",
  },
  networks: {
    rinkeby: {
      url: "https://rinkeby.infura.io/v3/2f09e485a9514e8b80efd471b0fe0326",
      accounts: ["43fea9dcf0621bb5a5d28065d4b9d5a0a2620a994b5c465ca4d59c1287c6f0dd"],
    },
  },
  gasReporter: {
    currency: 'WEI',
    gasPrice: 1
  }
};
