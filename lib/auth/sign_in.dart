import 'package:demo_task/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('cosmos-flower-background-in-watercolor-free-vector.jpg')),
        ),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(
             height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Welcome to flower encyclopedia"),
                  const Text(
                    'Flowers',
                    style:
                        TextStyle(fontSize: 50, color: Colors.white, shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color.fromARGB(255, 206, 94, 147),
                        offset: Offset(3, 3),
                      )
                    ]),
                  ),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",
                        onPressed: () {
                          Navigator.push(  
                         context,  
                         MaterialPageRoute(builder: (context) => const HomeScreen()),  
                        );  
                        },
                      ),
                  const SizedBox(
                       height: 20, // space
                      ),
                  SignInButton(
                        Buttons.Facebook,
                        text: "Sign in with Facebook",
                        onPressed: () {
                          Navigator.push(  
                         context,  
                         MaterialPageRoute(builder: (context) => const HomeScreen()),  
                        );  
                        },
                        ),
                ],
                ),
                ],
                
              ),
              ),
               
          ]
        ),
        ),

    );

  }
}