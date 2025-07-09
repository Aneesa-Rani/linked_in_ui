import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../widgets/constants.dart';
import 'email_screen.dart' show EmailScreen;
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      'assets/Logo.svg',
                      height: 35,
                      width: 35,),
                  ),
                  const SizedBox(height: 40,),
                  Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Add your name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),),
                        const SizedBox(height: 40,),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'First Name*'
                          ),
                        ),
                        const SizedBox(height: 40,),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Last Name*'
                          ),
                        ),
                        const SizedBox(height: 35,),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) =>const EmailScreen()
                                )
                                );
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: const BorderSide(color: kPrimaryColor)
                                      )
                                  )
                              ),
                              child: const Text('Continue',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                ),) ),
                        ),
                      ],
                    ),)
                ],
              ),
            ),
          ),
        )
    );
  }
}