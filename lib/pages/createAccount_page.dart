import 'package:flutter/material.dart';
import 'package:flutter_application/assets/colors/colors.dart';
import 'package:go_router/go_router.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppFisioColors.greenApp,
                  AppFisioColors.gradienteBaixo
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 240,
                margin: const EdgeInsets.only(top: 150),
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.light
                      ? 'lib/assets/images/LogoFisioConecta.png'
                      : 'lib/assets/images/LogoFisioConectaBranco.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 0,
                  bottom: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Gerenciamento de pacientes para fisioterapeutas.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              Form(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppFisioColors.whiteApp,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: 'Digite seu email',
                          labelText: 'Email:',
                          labelStyle: const TextStyle(
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppFisioColors.whiteApp,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: 'Confirme seu Email',
                          labelText: 'Confirme seu Email:',
                          labelStyle: const TextStyle(
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppFisioColors.whiteApp,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Senha:',
                          hintText: 'Digite sua senha',
                          labelStyle: const TextStyle(
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppFisioColors.whiteApp,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Confirme sua Senha:',
                          hintText: 'Confirme sua senha',
                          labelStyle: const TextStyle(
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppFisioColors.whiteApp,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: 'Digite seu Nome',
                          labelText: 'Digite seu Nome:',
                          labelStyle: const TextStyle(
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: double.maxFinite,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () => context.go('/home'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppFisioColors.greenApp,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                          child: const Text(
                            'Cadastrar',
                            style: TextStyle(
                                color: AppFisioColors.whiteApp,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Já possui uma conta?',
                            style: TextStyle(
                                fontSize: 16, color: AppFisioColors.greyApp),
                          ),
                          TextButton(
                            onPressed: () => context.go('/'),
                            child: const Text(
                              'Entre!',
                              style: TextStyle(
                                color: AppFisioColors.greyApp,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
