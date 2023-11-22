import 'package:flutter/material.dart';
import 'package:projeto/routes/app_routes.dart';

class QuestionarioScreen extends StatefulWidget {
  const QuestionarioScreen({Key? key}) : super(key: key);

  @override
  _QuestionarioScreenState createState() => _QuestionarioScreenState();
}

class _QuestionarioScreenState extends State<QuestionarioScreen> {
  int? selectedOption1;
  int? selectedOption2;
  int? selectedOption3;
  int? selectedOption4;
  int? selectedOption5;
  

  @override
  Widget build(BuildContext context) { 
    return Scaffold(  
      appBar: AppBar(
        title: const Text('Questionário'),
        backgroundColor: Color.fromARGB(255, 175, 53, 39),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildQuestionTile(
            question: '1. Em geral você diria que sua saúde é:',
            options: ['Excelente', 'Razoável', 'Ruim'],
            selectedValue: selectedOption1,
            onChanged: (int? value) {
              setState(() {
                selectedOption1 = value;
              });
            },
          ),
          _buildQuestionTile(
            question: '2. Quanta dor no corpo você teve durante o último mês?',
            options: ['Nenhuma', 'Moderada', 'Grave'],
            selectedValue: selectedOption2,
            onChanged: (int? value) {
              setState(() {
                selectedOption2 = value;
              });
            },
          ),
          _buildQuestionTile(
            question: '3. Comparada a um ano atrás, como você classificaria sua saúde em geral, agora?',
            options: ['Melhor', 'Quase a mesma', 'Um pouco pior'],
            selectedValue: selectedOption3,
            onChanged: (int? value) {
              setState(() {
                selectedOption3 = value;
              });
            },
          ),
          _buildQuestionTile(
            question: '4. Quanto sua saúde física ou problemas emocionais interferiram com as suas atividades sociais?',
            options: ['A maior parte do tempo', 'Em alguma parte do tempo', 'Nenhuma parte do tempo'],
            selectedValue: selectedOption4,
            onChanged: (int? value) {
              setState(() {
                selectedOption4 = value;
              });
            },
          ),
          _buildQuestionTile(
            question: '5. Estou satisfeito(a) comigo mesmo(a).',
            options: ['Concordo', 'Não concordo e nem discordo', 'Discordo'],
            selectedValue: selectedOption5,
            onChanged: (int? value) {
              setState(() {
                selectedOption5 = value;
              });
            },
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          if (selectedOption1 != null && selectedOption2 != null) {
            Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREN);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Por favor, responda a todas as perguntas'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: const Text('Salvar'),
      ),
    );
  }

  Widget _buildQuestionTile({
    required String question,
    required List<String> options,
    required int? selectedValue,
    required ValueChanged<int?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...List.generate(
          options.length,
          (index) => RadioListTile<int>(
            title: Text(options[index]),
            value: index + 1,
            groupValue: selectedValue,
            onChanged: onChanged,
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
