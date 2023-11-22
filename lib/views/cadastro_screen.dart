import 'package:flutter/material.dart';
import 'package:projeto/routes/app_routes.dart';



class CadastroScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  CadastroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        backgroundColor: Color.fromARGB(255, 175, 53, 39),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'E-mail'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: const InputDecoration(labelText: 'Confirmar Senha'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                final email = _emailController.text;
                final password = _passwordController.text;
                final confirmPassword = _confirmPasswordController.text;

                if (email.isNotEmpty && password.isNotEmpty && password == confirmPassword) {
                  Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREN);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Erro no registro. Verifique seus dados.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text('Cadastrar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.LOGIN); 
              },
              child: const Text('Já tem uma conta? Faça login aqui'),
            ),
          ],
        ),
      ),
    );
  }
}