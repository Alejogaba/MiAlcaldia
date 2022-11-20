import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class Login2Page extends StatelessWidget {
  final controller = Get.put(LoginController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: GetBuilder<LoginController>(
        init: LoginController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        child: const Text(
                          'BIENVENIDO',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: controller.emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (String value) {
                          if (value.isEmpty)
                            return 'Por favor, introduzca un texto';
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: controller.passwordController,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        validator: (String value) {
                          if (value.isEmpty)
                            return 'Por favor ingrese algún texto o números';
                          return null;
                        },
                        obscureText: true,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        alignment: Alignment.center,
                        child: SignInButton(
                          Buttons.Email,
                          text: "Ingresar",
                          onPressed: () async {
                            _.signInWithEmailAndPassword();
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16.0),
                        alignment: Alignment.center,
                        child: SignInButton(
                          Buttons.GoogleDark,
                          text: "Google",
                          onPressed: () async {
                            _.signInWithGoogle();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
