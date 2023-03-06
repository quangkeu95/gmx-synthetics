import dotenv from "dotenv";
dotenv.config();

import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "hardhat-contract-sizer";
import "solidity-coverage";
import "hardhat-gas-reporter";
import "hardhat-deploy";
import "hardhat-preprocessor";
import fs from "fs";
import "@typechain/hardhat";
import "@nomiclabs/hardhat-ethers";

// extends hre with gmx domain data
import "./config";

function getRemappings() {
  return fs
    .readFileSync("remappings.txt", "utf8")
    .split("\n")
    .filter(Boolean) // remove empty lines
    .map((line) => line.trim().split("="));
}

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.16",
    settings: {
      optimizer: {
        enabled: true,
        runs: 10,
        details: {
          constantOptimizer: true,
        },
      },
    },
  },
  networks: {
    hardhat: {
      saveDeployments: true,
    },
    localhost: {
      saveDeployments: true,
    },
    anvil: {
      live: false,
      url: "http://localhost:8545",
      saveDeployments: true,
    },
    arbitrum: {
      url: "https://arb1.arbitrum.io/rpc",
    },
    arbitrumGoerli: {
      url: "https://goerli-rollup.arbitrum.io/rpc",
      chainId: 421613,
    },
    avalancheFuji: {
      url: "https://api.avax-test.network/ext/bc/C/rpc",
      // url: "https://avalanche-fuji.infura.io/v3/fb7620c360784f1d84741af88a069604",
      chainId: 43113,
      accounts: [process.env.DEPLOYER_KEY].filter(Boolean),
      verify: {
        etherscan: {
          apiUrl: "https://api-testnet.snowtrace.io/",
          apiKey: process.env.SNOWTRACE_API_KEY,
        },
      },
      // blockGasLimit: 2500000,
      // gasPrice: 50000000000,
    },
  },
  // hardhat-deploy has issues with some contracts
  // https://github.com/wighawag/hardhat-deploy/issues/264
  etherscan: {
    apiKey: {
      // hardhat-etherscan plugin uses "avalancheFujiTestnet" name
      avalancheFujiTestnet: process.env.SNOWTRACE_API_KEY,
    },
  },
  gasReporter: {
    enabled: process.env.REPORT_GAS ? true : false,
  },
  namedAccounts: {
    deployer: 0,
  },
  // preprocess: {
  //   eachLine: (hre) => ({
  //     transform: (line: string) => {
  //       if (line.match(/^\s*import /i)) {
  //         for (const [from, to] of getRemappings()) {
  //           if (line.includes(from)) {
  //             line = line.replace(from, to);
  //             break;
  //           }
  //         }
  //       }
  //       return line;
  //     },
  //   }),
  // },
  // paths: {
  //   sources: "./src",
  //   cache: "./cache_hardhat",
  // },
};

export default config;
