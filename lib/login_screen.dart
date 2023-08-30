//stateless widget
//return scaffold on build
//body stack children
//final tct user = textfield (controller:,);

import 'package:flutter/material.dart';

TextEditingController txtConUser = TextEditingController();
TextEditingController txtConPass = TextEditingController();

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final txtPass = TextField(
    controller: txtConPass,
    obscureText: true,
  );
  final txtUser = TextField(
    controller: txtConUser,
    decoration: InputDecoration(border: OutlineInputBorder()),
  );

  final imgLogo = Container(
      width: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.logo.com/hotlink-ok/logo-social.png'))));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height, //fill
      decoration: BoxDecoration(
          image: DecorationImage(
              opacity: 0.5,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.pngplay.com/wp-content/uploads/12/Dog-PNG-Background-Clip-Art.png'))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 500),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              child: Container(
                height: 200,
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    txtUser,
                    const SizedBox(
                      height: 10,
                    ),
                    txtPass
                  ],
                ),
              ),
            ),
            imgLogo
          ],
        ),
      ),
    ));
  }
}
