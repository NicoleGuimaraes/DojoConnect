import 'package:flutter/material.dart';

class JiuJitsu extends StatelessWidget {
  const JiuJitsu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jiu Jitsu'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[200], // Cor de fundo
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              title: 'Dias e Horários das Aulas:',
              content: 'Segunda-feira, Quarta-feira e Sexta-feira das 21h às 23h',
              icon: Icons.access_time,
            ),
            _buildSection(
              title: 'Professor Responsável:',
              content: 'Professor Faixa Preta 4º Dan Jimmy Gusmão',
              icon: Icons.person,
            ),
            _buildSection(
              title: 'Local:',
              content: 'sala de lutas da Proex-Uenf',
              icon: Icons.check_circle,
            ),
            _buildSection(
              title: 'Equipamentos Utilizados em Aula:',
              content: 'Protetor bucal e kimono',
              icon: Icons.sports_mma,
            ),
            _buildSection(
              title: 'Informações Adicionais:',
              content:
                  'Todas as aulas são abertas ao público e gratuitas com o objetivo de melhorar a qualidade de vida e autoestima da comunidade',
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
