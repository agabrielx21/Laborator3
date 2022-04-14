// pragma solidity >=0.7.0 <0.9.0;
 
//  contract Adunare1{
//      uint public counter;
//      function AddCounter1(uint x1,uint x2,uint x3) public {
//              counter = counter + x1;
//              counter = counter + x2;
//              counter = counter + x3;
//          }       
//      }
//SPDX-License-Identifier: Unlicense



pragma solidity >=0.7.0 <0.9.0;
 
 contract Adunare1{
     uint public counter;
     function AddCounter1() public {
         for(uint i=1; i<=100;i++){
             counter = counter + 1;
         }
     }

 }
    