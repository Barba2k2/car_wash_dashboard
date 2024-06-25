import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/extension/size_screen_extension.dart';
import '../../../core/ui/widgets/car_wash_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 650,
                  minHeight: mediaQuery.size.height - 200,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/logo/logo.png',
                          width: 400,
                          height: 240,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(
                            'Registre-se',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const CarWashTextFormField(
                        hintText: 'Nome da Empresa',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const CarWashTextFormField(
                        hintText: 'CNPJ',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const CarWashTextFormField(
                        hintText: 'E-mail Corporativo',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const CarWashTextFormField(
                        hintText: 'Telefone para contato',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const CarWashTextFormField(
                        hintText: 'Senha',
                        obscureText: true,
                        showEyeIcon: true,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const CarWashTextFormField(
                        hintText: 'Confirmar Senha',
                        obscureText: true,
                        showEyeIcon: true,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Cadastar',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Já possui uma conta? ',
                          children: [
                            TextSpan(
                              text: 'Entrar',
                              style: GoogleFonts.archivo(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  log('Apertei no cadastre-se');
                                  Get.toNamed('/auth/login');
                                },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
