import 'package:flutter/material.dart';

class Judo extends StatelessWidget {
  const Judo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Judô'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[200], // Cor de fundo
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              title: 'Dias e Horários das Aulas:',
              content: 'Segunda e Quarta-feira, das 18h às 20h',
              icon: Icons.access_time,
            ),
            _buildSection(
              title: 'Professor Responsável:',
              content: 'Sensei João Silva',
              icon: Icons.person,
            ),
            _buildSection(
              title: 'Requisitos para Aula:',
              content: 'Idade mínima: 5 anos\nTrazer kimono',
              icon: Icons.check_circle,
            ),
            _buildSection(
              title: 'Equipamentos Utilizados em Aula:',
              content: 'Tatame, quimonos e protetores',
              icon: Icons.sports_mma,
            ),
            _buildSection(
              title: 'Informações Adicionais:',
              content:
                  'As aulas de judô visam promover o desenvolvimento físico e mental, além de ensinar técnicas de defesa pessoal. '
                  'Venha fazer parte do nosso dojo e aprender mais sobre a tradição do judô!',
              icon: Icons.info,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String content,
    required IconData icon,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white, // Cor de fundo da seção
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue), // Ícone colorido
              const SizedBox(width: 8.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            content,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
