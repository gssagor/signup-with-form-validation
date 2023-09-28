import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailPattern = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  late Size size;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';

  String? _validateName(String? val) {
    if (_name == null || _name.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  String? _validatePassword(String? val) {
    if (_password == null || _password.isEmpty) {
      return "Please enter your password";
    }
    return null;
  }

  String? _validateEmail(String? val) {
    if (_email == null || _email.isEmpty) {
      return "Please enter your email";
    }

    if (!emailPattern.hasMatch(_email)) {
      return "Please enter valid email";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    'assets/bg (8).png',
                  ),
                  fit: BoxFit.fill)),
          padding: EdgeInsets.symmetric(horizontal: 35.w),

          //we can validate form on user interaction

          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                      color: Color(0x45ffffff),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Image.asset(
                    'assets/user.png',
                    color: Colors.white,
                    width: 65.w,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 22.sp),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width - 70.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                          color: Color(0x34ffffff),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 0.5.sp, color: Colors.white)),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 55.w),
                      child: TextFormField(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintText: "Your Name",
                          hintStyle: TextStyle(
                              color: Color(0x85ffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
                          errorStyle: TextStyle(color: Color(0xffffec12)),
                        ),
                        onChanged: (val) {
                          setState(() {
                            _name = val;
                          });
                        },
                        validator: _validateName,
                      ),
                    ),
                    Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Icon(
                        Icons.person_outline_rounded,
                        size: 27.w,
                        color: Color(0xff00BED1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width - 70.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                          color: Color(0x34ffffff),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 0.5.sp, color: Colors.white)),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 55.w),
                      child: TextFormField(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                              color: Color(0x85ffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
                          errorStyle: TextStyle(color: Color(0xffffec12)),
                        ),
                        onChanged: (val) {
                          setState(() {
                            _email = val;
                          });
                        },
                        validator: _validateEmail,
                      ),
                    ),
                    Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Icon(
                        Icons.email_outlined,
                        size: 22.w,
                        color: Color(0xff00BED1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width - 70.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                          color: Color(0x34ffffff),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 0.5.sp, color: Colors.white)),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 55.w),
                      child: TextFormField(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Color(0x85ffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
                          errorStyle: TextStyle(color: Color(0xffffec12)),
                        ),
                        onChanged: (val) {
                          setState(() {
                            _password = val;
                          });
                        },
                        validator: _validatePassword,
                      ),
                    ),
                    Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Icon(
                        Icons.lock_outline_rounded,
                        size: 24.w,
                        color: Color(0xff00BED1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 3),
                          content: Text('Form validated successfully!')));
                    }
                  },
                  child: Container(
                    width: size.width,
                    height: 45.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2667EE),
                          fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
