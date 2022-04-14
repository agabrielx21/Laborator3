// pragma solidity >=0.7.0 <0.9.0;
 
//  contract Adunare2{
//      uint public counter;
//      function AddCounter2(uint x1,uint x2,uint x3) public {
//          uint counterx = counter;
//          counterx = counterx + x1;
//          counterx = counterx + x2;
//          counterx = counterx + x3; 
//          counter = counterx;       
//      }
    
//  }
//SPDX-License-Identifier: Unlicense





pragma solidity >=0.7.0 <0.9.0;
 
 contract Adunare2{
     uint public counter;
     function AddCounter2() public {
         uint counterx = counter;
         for(uint i=1; i<=100;i++){
             counterx = counterx + 1;
         }
         counter = counterx;
     }

 }