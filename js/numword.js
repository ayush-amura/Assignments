var units = [
  ""," One"," Two"," Three"," Four"," Five"," Six"," Seven"," Eight"," Nine"," Ten"
  ," Eleven"," Twelve"," Thirteen"," Fourteen"," Fifteen"," Sixteen"," Seventeen",
  " Eighteen"," Nineteen"];
var tens = [
  ""," Ten"," Twenty"," Thirty"," Forty"," Fifty",
  " Sixty"," Seventy"," Eighty"," Ninety"];
var bigNum = [
  ""," Thousands,"," Lakhs,"," Crores,"];
function convert3(number) {
  var result = "";
  var tens_place = number % 100;
  if(tens_place >= 20) {
    result += tens[Math.floor(tens_place/10)];
    tens_place = tens_place%10;
  }
  result += units[tens_place];
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
function bignum(number) {
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
    temp = convert3(temp);
      output = temp + bigNum[count] + output
    }while(number !== 0);
  return output;
}
String.prototype.humanize = function () 
{
  var number = parseInt(this);
  if (number === 0) {
    return " zero";
  }
  console.log (number)
  var result = convert3(number);
  return bignum(number) + result;
}
console.log("0".humanize());
console.log("39".humanize());
console.log("599".humanize());
console.log("99349".humanize());
console.log("90092323".humanize());