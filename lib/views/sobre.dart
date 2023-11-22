import 'package:flutter/material.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações de Desenvolvimento'),
        backgroundColor: Color.fromARGB(255, 175, 53, 39),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sobre o Aplicativo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
                const SizedBox(height: 16),
                _buildInfoCard('Autores', 'Nicole Guimarães e Ausberto Castro'),
                 _buildInfoCard('Instituição','Universidade Estadual do Norte Fluminense.\nCurso: Ciência da Computação\nDisciplina: Paradigmas de Orientação a Objetos para Desenvolvimento de Software.'),
                _buildInfoCard(
                  'Objetivo',
                  'Essa aplicação está sendo desenvolvida com o intuito de aplicar os conhecimentos adquiridos na disciplina de Programação Orientada a Objetos para Desenvolvimento, ministrada pelo professor doutor Ausberto Castro.',
                ),
                _buildInfoCard('Versão', '1.0.6'),
                _buildInfoCard('Data de Última Atualização', '21 de Novembro de 2023'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String content) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
