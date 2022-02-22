import 'package:flutter/material.dart';
// import 'package:simple_animations/simple_animations.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100]
        ),
        child: Column(
          children: [
          Container(
              height: 330,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeAnimation(
                          1,  Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      ))),
                   Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                          1.3,
                          Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-2.png'))),
                      ))),
                   Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                          1.5, Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/clock.png'))),
                      ))),
                   Positioned(
                    child: FadeAnimation(
                    1.6, Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white),
                          ),
                        )),
                 )),
                ],
              ),
            ),
          
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: Column(
                children: [
                  FadeAnimation(1.7,Container(
                    height: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child:
                           TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email or Phone number',
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        
                  )),
                     
                  SizedBox(height: 20),

                 FadeAnimation(1.75, Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                 )),
                  const SizedBox(
                    height: 30,
                  ),
                 FadeAnimation(2, Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(143, 148, 251, 1),
                            Color.fromRGBO(143, 148, 251, 6),
                          ])),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ))),
                  const SizedBox(
                    height: 50,
                  ),
                 FadeAnimation(1.5,  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color.fromRGBO(143, 148, 251, 1),
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
