import 'package:flutter/material.dart';
import 'package:projeto/routes/app_routes.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
            ElevatedButton(
              onPressed: () {
                final email = _emailController.text;
                final password = _passwordController.text;
                
                
                if (email.isNotEmpty && password.isNotEmpty) {
                  Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREN);
                } else {
                  // mensagem de erro se a autenticação falhar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('E-mail ou senha inválidos'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.CADASTRO); 
              },
              child: const Text('Não tem uma conta? Crie uma aqui'),
            ),
          ],
        ),
      ),
    );
  }
}