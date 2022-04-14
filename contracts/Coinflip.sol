//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;
 
contract Victim {
   mapping (address => bool) public winners;
 
   function draw(uint256 betGuess) public payable {
     require (msg.value >= 1 ether);
     uint outcome = coinFlip();
     if (outcome == betGuess){
       winners[msg.sender] = true;
     }
   }
 
   function coinFlip() private view returns (uint) {
     return uint(
       keccak256(abi.encodePacked(blockhash(block.number),msg.sender))
     );
   }
 
 }

 
