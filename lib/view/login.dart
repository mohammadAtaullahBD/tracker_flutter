import 'package:flutter/material.dart';
import 'package:treacker/view/manager_view/managing.dart';
import 'package:treacker/view/working.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            // Login logo
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Color.fromRGBO(4, 55, 163, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
            ),
            // form
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email:",
                  style: TextStyle(
                      color: Color.fromRGBO(94, 94, 94, 0.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0),
                  textAlign: TextAlign.start,
                ),
                Container(
                  color: const Color.fromRGBO(173, 173, 173, 0.2),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password:",
                    style: TextStyle(
                        color: Color.fromRGBO(94, 94, 94, 0.5),
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0),
                  ),
                  Container(
                    color: const Color.fromRGBO(173, 173, 173, 0.2),
                    child: TextField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Working()),
                      );
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color.fromRGBO(7, 7, 185, 0.8),
                          fontSize: 10.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: InkWell(
                onTap: () {
                  if(email.value.text=="ataullah@gmail.com"&&password.value.text=="123"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Managing()));
                  }else{
                    print("${email.value.text} and ${password.value.text}");
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromRGBO(4, 55, 163, 0.8),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Working()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color.fromRGBO(4, 55, 163, 0.8),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
