import 'package:flutter/material.dart';
import 'package:password_manager/shared/widgets/customElevatedButton.dart';
import 'package:password_manager/shared/widgets/customTextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Password Manager",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Ajusta el color según tu tema
                ),
              ),
              const SizedBox(height: 3),
              Container(
                padding: const EdgeInsets.all(10),
                width: 350,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 3.5, color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Image.asset('assets/metrotec.jpg')),
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const CustomTextField(
                      hintText: 'User',
                      suffixIcon: Icon(Icons.person_outline_outlined),
                    ),
                    const SizedBox(height: 15),
                    const CustomTextField(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock_outline),
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFffae50),
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.black54))),
                      action: () {},
                      child: const Text(
                        "Iniciar Sesión",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 9),
                    GestureDetector(
                      onTap: () {}, // Acción cuando el texto es tocado
                      child: const Text(
                        "Olvidé mi contraseña",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black, // Color del texto como un link
                          decoration: TextDecoration.underline, // Subrayado
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
