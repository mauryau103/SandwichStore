/*extract all fields on the basis of id*/
let fnameNode=document.getElementById('fname');
let unameNode=document.getElementById('uname');
let contactNode=document.getElementById('mobile');
let emailNode=document.getElementById('emailid');
let passNode=document.getElementById('pass');
let cpassNode=document.getElementById('c_pass');

let errorNode1=document.getElementById('error1');
let errorNode2=document.getElementById('error2');
let errorNode3=document.getElementById('error3');
let errorNode4=document.getElementById('error4');
let errorNode5=document.getElementById('error5');
let errorNode6=document.getElementById('error6');

const errorBorder="2px solid red";
const successBorder="2px solid green";

function validateForm(){
    let s1=validate1();
    let s2=validate2();
    let s3=validate3();
    let s4=validate4();
    let s5=validate5();
    let s6=validate6();
    console.log(s1 && s2 && s3 && s4 && s5 && s6);
    return (s1 && s2 && s3 && s4 && s5 && s6);
}
function validate1(){
    let fname=fnameNode.value; 
    errorNode1.innerHTML="";  
    if(fname===''){
        errorNode1.innerHTML="Name is required";
        fnameNode.style.border=errorBorder;
        return false;
    }
    else{
        fnameNode.style.border=successBorder;
        return true;
    }
}
function validate2(){
    let username=unameNode.value;  
    errorNode2.innerHTML="";  
    if(username===''){
        errorNode2.innerHTML="username is required";
        unameNode.style.border=errorBorder;
        return false;
    }
    else if(username.length<6 || username.length>12){
        errorNode2.innerHTML="Username should be min 6 and max 12 characters long";
        unameNode.style.border=errorBorder;
        return false;
    }
    else{
        unameNode.style.border=successBorder;
        return true;
    }
}

function validate3(){
    let mobile=contactNode.value;  
    let regExp= new RegExp("^[0-9]{10}$");  //class
    errorNode3.innerHTML="";  
  //  console.log(regExp.test(mobile));   // function
    if(mobile===''){
        errorNode3.innerHTML="Mobile is required";
        contactNode.style.border=errorBorder;
        return false;
    }
    else if(regExp.test(mobile)==false){
        errorNode3.innerHTML="Please enter valid mobile number";
        contactNode.style.border=errorBorder;
        return false;
    }
    else{
        contactNode.style.border=successBorder;
        return true;
    }
}
function validate4(){
    let email=emailNode.value;  // @vinapatil
    errorNode4.innerHTML="";  
    let ss1=email.substring(0,email.indexOf('@'));
    let ss2=email.substring(email.indexOf('@')+1);
   // let index=email.indexOf('@');
   // if(index==0 || index===email.length-1)
    console.log(ss1);
    console.log(ss2);
    if(email===''){
        errorNode4.innerHTML="Email Id is required";
        emailNode.style.border=errorBorder;
        return false;
    }
    else if(!email.includes('@')){
        errorNode4.innerHTML="Email Id should contain @";
        emailNode.style.border=errorBorder;
        return false;
    }
    else if (ss1==='' || ss2===''){
        errorNode4.innerHTML="Invalid Email id";
        emailNode.style.border=errorBorder;
        return false;
    }
    else{
        emailNode.style.border=successBorder;
        return true;
    }
}
function validate5(){
    let password=passNode.value;  
    let regExp= new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,15})");
    errorNode5.innerHTML="";  
   // console.log(regExp.test(password));   
    if(password===''){
        errorNode5.innerHTML="Password is required";
        passNode.style.border=errorBorder;
        return false;
    }
    else if(regExp.test(password)==false){
        errorNode5.innerHTML="Password should contain atleast one digit, small letter and capital letter.Password should be min 6 and max 15 characters long";
        passNode.style.border=errorBorder;
        return false;
    }
    else{
        passNode.style.border=successBorder;
        return true;
    }
}

function validate6(){
    let password=passNode.value;  
    let c_password=cpassNode.value;  
    errorNode6.innerHTML="";  
    if(c_password===''){
        errorNode6.innerHTML="Confirm Password is required";
        cpassNode.style.border=errorBorder;
        return false;
    }
    else if(c_password!=password){
        errorNode6.innerHTML="Both passwords should match";
        cpassNode.style.border=errorBorder;
        return false;
    }
    else{
        cpassNode.style.border=successBorder;
        return true;
    }
}