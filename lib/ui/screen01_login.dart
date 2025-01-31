import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:developer';

import 'package:ttl/helper.dart';
import 'package:ttl/ui/screen02_dashboard.dart';
import 'package:ttl/ui/screen03_pending_task.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFF01264A),
          child: Column(
            children: [
              const SizedBox(height: 200,),
              Text(
                  "TTL Sales & Rental \n Sdn Bhd",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                              "Username",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color(0xFF212121),
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextField(
                            controller: usernameController,
                            onChanged: (val) {
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Username',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                              "Password",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color(0xFF212121),
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextField(
                            controller: passwordController,
                            onChanged: (val) {

                            },
                            decoration: InputDecoration(
                              //prefixIcon: Image.asset('images/email.png', width: 20, height: 20,),
                              hintText: 'Enter Password',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            height: 47,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, Helper().createRoute(const DashboardScreen()));

                              },
                              style: ButtonStyle(
                                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                  backgroundColor: WidgetStateProperty.all<Color>(const Color(
                                      0xffd6950d),),
                                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          side: BorderSide(color: Color(0xffd6950d),)
                                      )
                                  )
                              ),
                              child: const Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'Poppins-Medium',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
