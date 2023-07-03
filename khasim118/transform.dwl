%dw 2.0
output application/json
//Here I removed the spaces from the given input by using functions
import * from dw::core::Strings
fun removeSpace(StartData)=if(StartData[-1]==" ")removeSpace(StartData[0 to-2]) else
StartData
---
payload mapObject ((value, key, index) ->{
 (key):removeSpace(value)
})
