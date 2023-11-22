/*
 Projeto: DojoConnetc
 Autora: Nicole de Souza Guimarães e Ausberto Castro Vera
 Data da última atualização: 09/10/23
 Disciplina: Paradigma Orientada a Objetos de Desenvolvimento de Software
 universidade */


import 'package:flutter/material.dart';
import 'package:projeto/provider/users.dart';
import 'package:projeto/routes/app_routes.dart';
import 'package:projeto/views/config.dart';
import 'package:projeto/views/home_screen.dart';
import 'package:projeto/views/cadastro_screen.dart';
import 'package:projeto/views/login_screen.dart';
import 'package:projeto/views/modalidades/boxe.dart';
import 'package:projeto/views/modalidades/jiu_jitsu.dart';
import 'package:projeto/views/modalidades/kung_fu.dart';
import 'package:projeto/views/modalidades/taichi.dart';
import 'package:projeto/views/questionario.dart';
import 'package:projeto/views/sobre.dart';
import 'package:projeto/views/user_form.dart';
import 'package:projeto/views/user_list.dart';
import 'package:projeto/views/modalidades/judo.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Dojoconnect',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: AppRoutes.LOGIN, // Defina a tela de login como a inicial
        routes: {
          AppRoutes.HOME_SCREN: (_) => const HomeScreen(), 
          AppRoutes.HOME: (_) => const UserList(),
          AppRoutes.USER_FORM: (_) => UserForm(),
          AppRoutes.LOGIN: (_) => LoginScreen(), 
          AppRoutes.CADASTRO: (_) => CadastroScreen(), 
          AppRoutes.USER_LIST: (_) => const UserList(),
          AppRoutes.QUESTIONARIO: (_) => const QuestionarioScreen(),
          AppRoutes.SOBRE: (_) => const SobreScreen(),
          AppRoutes.JUDO: (_) => const Judo(),
          AppRoutes.BOXE: (_) => const Boxe(),
          AppRoutes.KUNGFU: (_) => const KungFu(),
          AppRoutes.JIUJITSU: (_) => const JiuJitsu(),
          AppRoutes.TAICHI: (_) => const Taichi(),
          AppRoutes.CONFIG: (_) => const Config(),
          
          
        },
      ),
    );
  }
}
