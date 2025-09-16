function BMIvalue(){
let weight=document.getElementById('Weight').value;
let height=document.getElementById('Height').value;
height=height*12;
height=height*0.025;
let newBMIvalue=weight/(Math.pow(height,2));
newBMIvalue=Math.round(newBMIvalue);
document.getElementById('value').value=newBMIvalue;
}