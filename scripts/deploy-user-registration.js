const {ethers} = require("hardhat");


async function deployScript(){
	const UserRegistration = await ethers.getContractFactory("UserRegistration");
	const userRegistration = await UserRegistration.deploy()
	userRegistration.waitForDeployment()

	console.log("Contract Deployed to address`)
}

deployScript().then(())
