import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/custom_text_field.dart';
import '../../constants/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController email;
  late TextEditingController name;
  late TextEditingController password;
  late TextEditingController confirm_password;

  bool rememberMe = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    name = TextEditingController();
    confirm_password = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    name.dispose();
    password.dispose();
    confirm_password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Icon(Icons.chevron_left)),
        automaticallyImplyLeading: false,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              Text('Create your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                labelText: 'Name',
                controller: name,
                suffixIcon: SvgPicture.asset(
                  'assets/icons/user_icon.svg',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                labelText: 'Email',
                controller: email,
                validator: (value) {
                  if(value != null && value.isEmpty){
                    return 'Fill Field';
                  }
                  return null;
                },
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
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                labelText: 'Confirm Password',
                controller: confirm_password,
                suffixIcon: SvgPicture.asset(
                  'assets/icons/lock_icon.svg',
                ),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Checkbox(
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
                    ),
                    Expanded(
                      child:  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'I agree to Recess Terms of service and Privacy Policy.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              MaterialButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                color: AppColors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text('Sign Up',
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
            ],
          ),
        ),
      ),
    );
  }
}
