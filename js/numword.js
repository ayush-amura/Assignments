//Arrays used
var units = [
  ""," One"," Two"," Three"," Four"," Five"," Six"," Seven"," Eight"," Nine"," Ten"
  ," Eleven"," Twelve"," Thirteen"," Fourteen"," Fifteen"," Sixteen"," Seventeen",
  " Eighteen"," Nineteen"];

var tens = [
  ""," Ten"," Twenty"," Thirty"," Forty"," Fifty",
  " Sixty"," Seventy"," Eighty"," Ninety"];

var bigNum = [
  ""," Thousands,"," Lakhs,"," Crores,"];

//Function Converts for number less then 1000
function convert(number) {
  var result = "";
//Setting ten's place and Unit's place  
  var tensPlace = number % 100;
  if(tensPlace >= 20) {
    result += tens[Math.floor(tensPlace/10)];
    tensPlace = tensPlace%10;
  }
  result += units[tensPlace];
 //Traversing through units array for 'X'-hundred value 
  var hundreds = Math.floor((number%1000)/100);
  if (hundreds !== 0) {
    if ((number%1000)%100 !== 0) {
      result = units[hundreds] + " hundreds," + result;
    } else {
      result = units[hundreds] + " hundreds";
    }
  }
  return result;
}

//Function for traversal through bigNums and concatenation of result
function convertBignum(number) {
  number = Math.floor(number / 1000);
  var count = 0;
  if(number === 0) {
    return "";
  }
  var output = ""; 
  do {
    temp = number % 100;
    number = Math.floor(number/100)
    count += 1;
    temp = convert(temp);
      output = temp + bigNum[count] + output
    }while(number !== 0);
  return output;
}


//Main Function 
String.prototype.humanize = function () 
{
  var number = this;
  if(!/^[0-9]+$/.test(number)){
    console.log("Invalid  input")
  }

  if (number === 0) {
    return " zero";
  }
  //console.log(number)
  var result = convert(number);
  return convertBignum(number) + result;
}

//Test cases
console.log("0".humanize());
console.log("39".humanize());
console.log("599".humanize());
console.log("123123123".humanize());
console.log("23d".humanize());
