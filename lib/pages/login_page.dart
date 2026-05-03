import 'package:flutter/material.dart';
import 'package:training_app/components/input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/images/logo.png"),
                  ),

                  Text(
                    "Bem-vindo",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),

                  Container(height: 10),

                  Text(
                    "Faça login para continuar",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 15, top: 50),
                    child: Input(
                      label: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),

                  Input(
                    label: "Senha",
                    prefixIcon: Icon(Icons.lock_outline),
                    isPassword: true,
                  ),

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/dashboard");
                      },
                      child: Text("Entrar"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
