import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:pasada_driver_side/NavigationPages/home_page.dart';
import 'package:pasada_driver_side/NavigationPages/main_page.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            //CONTENTS
            children: [
              //HEADER
              Container(
                alignment: Alignment.centerLeft,
                // margin: const EdgeInsets.only(top: 60),
                width: 60,
                height: 60,
                child: SvgPicture.asset('assets/svg/Ellipse.svg'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Log-in to your account',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              //DRIVER ID PART
              Container(
                margin: const EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Enter your ',
                        ),
                        Text(
                          'Driver ID',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(' to continue')
                      ],
                    ),

                    //INPUT
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            labelText: 'Enter your Driver ID here',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 115, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //PASSWORD PART
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Enter your ',
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    //INPUT
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            labelText: 'Enter your Password here',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 115, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              //FORGOT PASSWORD BUTTON
              Container(
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
              ),

              //LOG IN BUTTON
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(top: 120),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5F3FC4),
                      minimumSize: const Size(240, 45),
                      shadowColor: Colors.black,
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Color(0xFFF2F2F2),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
