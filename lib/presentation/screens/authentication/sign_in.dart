import 'package:connect_assignment/presentation/constants/colors.dart';
import 'package:connect_assignment/presentation/screens/authentication/sign_up.dart';
import 'package:connect_assignment/presentation/screens/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController email;
  late TextEditingController password;
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "REC\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                      children: [
                        TextSpan(
                          text: "ESS",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text('Enter your email & choose\nyou password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                labelText: 'Email',
                controller: email,
                suffixIcon: SvgPicture.asset(
                  'assets/icons/mail_icon.svg',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                labelText: 'Password',
                controller: password,
                suffixIcon: SvgPicture.asset(
                  'assets/icons/lock_icon.svg',
                ),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: rememberMe,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value ?? false;
                            });
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav(selectIndex: 3),));
                },
                color: AppColors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text('Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('or continue with'),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/facebook_icon.svg"),
                    padding: EdgeInsets.all(10),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/google_icon.svg"),
                    padding: EdgeInsets.all(10),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/apple_icon.svg"),
                    padding: EdgeInsets.all(10),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                      text: TextSpan(
                          text: "New to Today? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.black),
                          children: [
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: AppColors.primarySky),
                          ),
                        )),
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
