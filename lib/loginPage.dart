import 'package:flutter/material.dart';
import 'package:project/main.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text("Welcome To Flutter",
          style: TextStyle(
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ) ,),
        ),
        leading: IconButton(onPressed: (){print("settings");}, 
        icon: Icon(Icons.settings)),
        actions: [
          IconButton(onPressed: (){print("search");}, 
          icon: Icon(Icons.search)),
          IconButton(onPressed: (){print("email");}, 
          icon: Icon(Icons.email)),
          IconButton(onPressed: (){print("menu");}, 
          icon: Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
        children: [
          //Background Image
          SizedBox(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height,
            child: image,
          ),
          //login form Sizebox
          Center(
            child: SizedBox(
              width: 300.0,
              child:Card(
                elevation: 9,
                color: Colors.white.withOpacity(0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Login",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey
                      ),),
                      SizedBox(
                        height:20,

                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Username",
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: 
                        InputDecoration(
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("login button");
                        },
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Login"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(onPressed: (){print("Forget Password?");}, 
                      child: Text("Forget Password?"),),
                    ],
                    
                  ),
                
                ),


              )

            ),
          )
        ],
      ),
        ),
      ),
    );
  }
}