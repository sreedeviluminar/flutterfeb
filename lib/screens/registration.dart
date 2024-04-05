import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/login_page.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import '../utils/mycolors.dart';

class RegistrationPage extends StatelessWidget {

   TextEditingController passController = TextEditingController();
   var formkey = GlobalKey<FormState>(); // formkey used to monitor the state of entire form and validate it

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          //physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key:formkey,// if we do not set key here validation will not occur
              child: Column(
                children: [
                  const SizedBox(height: 50), // Adding space at the top
                  Text(
                    "SignUp Page",
                    style: MyTextThemes.textHeading
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Create Your Account",
                    style: MyTextThemes.bodyTextStyle
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "UserName",
                      hintText: 'Enter your Username here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   TextFormField(
                     validator:(email){
                       if(email!.isEmpty || !email.contains('@')){
                         return "email must be a valid email";
                       }else{
                         return null;
                       }
                     } ,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText:true ,
                    obscuringCharacter: '*',
                    validator: (password){
                      if(password!.isEmpty || password.length < 6) {
                        return 'Password is empty or / check the length';
                      }else{
                        return  null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                      helperText:
                      'Password must contain upper and lowercase letters',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (confirmpassword){
                      if(confirmpassword!.isEmpty || confirmpassword != passController.text){
                        return "password empty/mismatch";
                      }else{
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: 'Confirm your password here',

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if(valid == true){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>LoginPage()));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Registration failed")));
                      }
                    },
                    color: MyColors.basicColor,
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text("Register"),
                  ),
                  const SizedBox(height: 20), // Adjusted spacer
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Already Registered?? SignIn Here!!",
                        style: MyTextThemes.bodyTextStyle))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
