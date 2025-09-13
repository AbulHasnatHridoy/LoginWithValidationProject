import 'package:flutter/material.dart';
import 'package:project/HomePage.dart';
import 'package:project/main.dart';
class LoginPage extends StatelessWidget {
   LoginPage({super.key});
   final _formkey=GlobalKey<FormState>();
   final TextEditingController _usernameController=TextEditingController();
   final TextEditingController _passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,

        title: Center(
          child: Text("Welcome To Flutter",
          style:TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            
            ) ,
          ),
        ),
        leading: IconButton(onPressed: (){print("settings");},
         icon: Icon(Icons.settings)),
         actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.search)),
           IconButton(onPressed: (){},
            icon: Icon(Icons.menu))
         ],
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              //background image
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              child: image,
            ),
            //login form 
            
            
          ),
          SingleChildScrollView(

            child: Center(
              child: Padding(
                padding:EdgeInsets.all(20.0),
                child: Card(
                  elevation: 9,
                  color: Colors.white.withOpacity(0.9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    //form wrapper
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Login",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                          ),
                          SizedBox(
                            height: 20,
                            
                          ),
                          TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(19),

                              ),
                              prefixIcon: Icon(Icons.person),
                              hintText: "Enter your name",
                              labelText: "Username",
                            ),
                            validator: (value) {
                              if(value ==null || value.isEmpty)
                              {
                                return("Plese enter your username");
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            //password box
                            height: 20,

                          ),
                          TextFormField(
                            controller:  _passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(19),
                                
                              ),
                              hintText: "Enter your password",
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",

                            ),
                            validator: (value) {
                              if(value == null || value.isEmpty)
                              {
                                return "Please enter your password";
                              }
                              else if(value.length<6)
                              {
                                return "Password should be at least 6 characters";
                              }
                              return null;
                            },
                            
                            
                          ),
                          const SizedBox(
                            height: 20,

                          ),
                          //Login button with validation +check
                          ElevatedButton(onPressed: ()
                          {
                            if(_formkey.currentState!.validate())
                            {
                              String username=_usernameController.text.trim();
                              String password =_passwordController.text.trim();
                            
                            if(username=="Amrin Sultana" && password=="123456")
                            {
                              //Navigate to the next page
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context)=>Homepage()),
                                );

                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:Text("Invalid Username or Password"),
                                  backgroundColor: Colors.redAccent,
                                  ),
                                  );
                            }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 20),
                            
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white10,

                          ),
                           child: Text("Login",style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                           ),
                           ),
                           ),
                           const SizedBox(
                            height: 15,
                           ),
                           TextButton(onPressed: (){
                            print("Forget Password?");

                           }, child: Text("Forget Password?"))

                        ],
                      
                      ),

                      ),
                    ),
                    
              
                ),
                
                ),
            ),
              
          )
          
        ],
      ),
    );
  }
}