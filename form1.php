<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration form</title>
   <link rel="stylesheet" href="form.css" />
</head>
<style>
    .error{
        color: red;
        margin: 7px;
        text-align: right;
    }
    </style>
<body>

    <div class="container">
        <h1 class="form-title"> Business Registration Form </h1>
        <form action="#" onsubmit="return validateFrom()">
        
        <select class="form-select" aria-label="Default select example">
  <option class="select" selected>Select</option>
  <option value="1">Bill book</option>
  <option value="2">Latterhead</option>
  <option value="3">Banner</option>
  <option value="4">browsar</option>
  <option value="5">Pamphlet</option>
  <option value="6">Sticker</option>
</select>

            <div class="main-user-info">
                <div class="user-input-box">
                    <lable for="fullname" class="fullname">Name:- *</lable>
                    <input type="text"
                           id="businessname"
                           name="businessname"
                           placeholder="Enter your business name">
                           <p id="businessnameError" class="error"></p>
                           <br>
                           <br>
                           <br>
                      <input type="text"
                           id="Name"
                           name="Name"
                           placeholder="Enter your name">
                           <p id="NameError" class="error"></p>
                        </div>

                        <div class="user-input-box">
                    <lable for="phonenumber" class="phonenumber">Phone no:- *</lable>
                    <input type="phonenumber"
                           id="phonenumber"
                           name="phonenumber"
                           placeholder="Enter your phone no">
                           <p id="phonenumberError" class="error"></p>
                        </div>
       
                        <div class="user-input-box">
                    <lable for="email">Email:- * </lable>
                    <input type="email"
                           id="email"
                           name="email"
                           placeholder="Enter Email">
                           <p id="emailError" class="error"></p>
                        </div>


                        <div class="user-input-box">
                    <lable for="address">Address:- </lable>
                    <input type="text"
                           id="address"
                           name="address"
                           placeholder="Enter your address">
                           <p id="addressError" class="error"></p>
                        </div>

                        <div class="user-input-box">
                    <lable for="Businesspolicy">Businespolicy:- </lable>
                    <input type="text"
                           id="Businesspolicy"
                           name="Businesspolicy"
                           placeholder="Enter youe business policy">
                           <p id="BusinesspolicyError" class="error"></p>
                        </div>

                        <div class="user-input-box">
                    <lable for="confirmpassword">GST/PAN no:- *</lable> <input type="phonenumber"
                           id="gstpannumber"
                           name="gst/pannumber"
                           placeholder="Enter your GST/PAN no">
                           <p id="gstpanError" class="error"></p>
                   <BR>
                   <br>
                   <Br>
                   <Br>
                   

                        <div class="user-input-box">
                    <lable  id="cast" for="address">Business Catgories:-</lable>
                    <input type="text"
                           id="businesscategories"
                           name="businesscategories"
                           placeholder="Enter your business category">
                           <p id="businesscategoriesError" class="error"></p>
                        </div>

                        <div class="user-input-box">
                    <lable for="address">Other content:-</lable>
                    <input type="text"
                           id="Other"
                           name="Other"
                           placeholder="Add other content">
                           <p id="otherError" class="error"></p>
                       </div>
                       <br>
                       <br>
                       <BR>
                       <BR>
                       <BR>
                       <br>

                       <form class="form">
        <div class="file-upload-wrapper" data-text="select your file!">
            <input name="file-upload-field" type="file" class="file-upload-field" value="">
        </div>          
              <br>
              <br>
        <div class="form-submit-btn">
                <input type="submit" value="Submit">
                </div>
                
               
     </form>          
    </div>
    

        <script>
            let businessname = document.getElementById("businessname");
            let Name = document.getElementById("Name");
            let phonenumber = document.getElementById("phonenumber");
            let email = document.getElementById("email");
            let address = document.getElementById("address");
            let Businesspolicy = document.getElementById("Businesspolicy");
            let gstpannumber = document.getElementById("gstpannumber");
            let businesscategories = document.getElementById("businesscategories");
            let Other= document.getElementById("Other");

            function validateFrom(){
                if( businessname.value ==""){
                   document.getElementById("businessnameError").innerHTML = "Business Name is rempty";
                }
                else{
                    document.getElementById("businessnameError").innerHTML = "";
                }

                if( Name.value ==""){
                   document.getElementById("NameError").innerHTML = "Name is empty";
                }
                else{
                    document.getElementById("NameError").innerHTML = "";
                }

                if( phonenumber.value ==""){
                    document.getElementById("phonenumberError").innerHTML = "Phone number is empty";  
                }
               else if( phonenumber.value.length < 10){
                    document.getElementById("phonenumberError").innerHTML = "Phone number is invalid";
               }
               else if( phonenumber.value.length > 10){
                    document.getElementById("phonenumberError").innerHTML = "Phone number is invalid";
               }
                else{
                    document.getElementById("phonenumberError").innerHTML = "";  
                }

                if( email.value ==""){
                    document.getElementById("emailError").innerHTML = "Email is empty";
                }
                else{
                    document.getElementById("emailError").innerHTML = "";  
                } 
                
                if( address.value ==""){
                    document.getElementById("addressError").innerHTML = "Address is empty"; 
                }
                else{
                    document.getElementById("emailError").innerHTML = "";  
                }  

                if( Businesspolicy.value ==""){
                    document.getElementById("BusinesspolicyError").innerHTML = "Businesspolicy is empty";
                }
                else{
                    document.getElementById("BusinesspolicyError").innerHTML = "";  
                }
                
                if( gstpannumber.value ==""){
                    document.getElementById("gstpanError").innerHTML = "Gst/Pannumber is empty";
                }
                else if(gstpannumber.value.length < 12){
                    document.getElementById("gstpanError").innerHTML = "Gst/Pannumber is invalid";
               }
               else if( gstpannumber.value.length > 12){
                    document.getElementById("gstpanError").innerHTML = "Gst/Pannumber is invalid";
               }
                else{
                    document.getElementById("gstpanError").innerHTML = "";  
                }

                if( businesscategories.value ==""){
                    document.getElementById("businesscategoriesError").innerHTML = "Businesscategories is empty";
                }
                else{
                    document.getElementById("businesscategoriesError").innerHTML = "";  
                }

                if( Other.value ==""){
                    document.getElementById("otherError").innerHTML = "Other is empty";
                }
                else{
                    document.getElementById("otherError").innerHTML = "";  
                }

                {return false;}
                {return true;}
            }
            </script>
           
</body>
</html>