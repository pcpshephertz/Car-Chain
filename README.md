# Car-Chain

Distributed autonomous car data network build on the top of blockchain technology.

## Prerequisite
- Linux machine, windows machine, mac
- Ethereum network up and running.

Note : Currently we have automated scripts for setting up dev environment for linux machine only.
Users are requested to install Ethereum private network on there machine according to official ethereum documentation.

## Project structure
- src : project source folder.
- src/dApp : contain dApps source code
- src/EthereumDevEnvSetup : contains automated script which are used to set up developement environment for dApp

The dApp and EthereumDevEnvSetup are different project module, loosely coupled with each other.

## dApp

###### dApp module structure
- contracts : contains smart contracts written in solidity 
- migration : contains smart contract migration code, useful for deployment of smart contracr to network.
- resource : contains various resource files used in dApp module
- test : contains test cases which can be written in Solidity or Javascript.
- ui : contains UI code along with web3.js. Web3.js interact with blockchain network.  

## EthereumDevEnvSetup

This module is used to automate the installation of Ethereum network on users local 
machine for the developement of dApps using solidity.

Please follow below steps to download and install tools required to setup up Ethereum solidity based dApp on your machine.

# Tools installed
- Geth
- Ethereum wallet in mist mode
- Geth miner

All these tools are required for the developement for Ethereum Solidity based dApps.

## Project structure
- src : project source folder.
- src/resources : contains resource files of project.
- src/script : contains project scripts.
- src/tools : geth, ethereum wallet are installed here.

## Prerequisite
- Linux machine
- unzip, tar and wget installed

# How to run
 - git clone `https://github.com/PaytmBuildForIndia/Car-Chain`
 - Go to EthereumDevEnvSetup module : `cd src/EthereumDevEnvSetup`

### Setup geth, mist and initialize genesis block(One time task)

Run the below commands in your console. Note you should be in `EthereumDevEnvSetup` module directory.

- chmod 777 src/scripts/*
- src/scripts/env.sh
- src/scripts/setup.sh
- src/scripts/init_genesis_block.sh

### Run geth and mist
- src/scripts/start.sh

This will create `process.txt` at `EthereumDevEnvSetup/src/tools` which contains pid's of `geth` and `mist` process.
Please create an account in mist before you start miner.

### Run miner
- Open new terminal.
- `src/scripts/miner.sh`

When miner will start it will ask you three options
- Start miner : press 1 to start miner. It will print `null` on console which is its expected behaviour.
- Stop miner : press 2 to stop miner. It returns boolean `true`.
- Enter manual command : Anything - [1, 2]. This opens up console in which you can enter manual commands.


### How to contribute
Please feel free to contribute to this project.

