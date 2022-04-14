//const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    // const Coinflip = await ethers.getContractFactory("Victim");
    // const cflip = await Coinflip.deploy();
    // await cflip.deployed();
    // console.log(cflip.address);

    // const Attack = await ethers.getContractFactory("Attack");
    // const attack = await Attack.deploy();
    // await attack.deployed();
    // console.log(attack.address);
    // await attack.atac(7);

    const Ad1 = await ethers.getContractFactory("Adunare1");
    const ad1 = await Ad1.deploy();
    await ad1.deployed();
    await ad1.AddCounter1();

    const Ad2 = await ethers.getContractFactory("Adunare2");
    const ad2 = await Ad2.deploy();
    await ad2.deployed();
    await ad2.AddCounter2();
  });
});
