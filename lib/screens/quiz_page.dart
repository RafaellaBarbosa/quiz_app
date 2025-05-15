import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';
import 'package:quiz_app/widgets/answers_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  void reponder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  int perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': "Qual é a sua cor favorita?",
        'respostas': ['Azul', 'Vermelho', 'Verde', 'Amarelo', 'Rosa']
      },
      {
        'texto': "Qual é o seu hobby preferido?",
        'respostas': ['Leitura', 'Música', 'Esportes', 'Viagens', 'Cinema']
      },
      {
        'texto': "Qual é o seu filme favorito?",
        'respostas': [
          'Ação',
          'Comédia',
          'Drama',
          'Ficção Científica',
          'Romance'
        ]
      },
      {
        'texto': "Qual país você gostaria de visitar?",
        'respostas': ['Estados Unidos', 'França', 'Itália', 'Japão', 'Brasil']
      },
      {
        'texto': "Qual é o seu prato favorito?",
        'respostas': ['Pizza', 'Sushi', 'Hambúrguer', 'Feijoada', 'Churrasco']
      },
      {
        'texto': "Qual é o seu esporte favorito?",
        'respostas': ['Futebol', 'Basquete', 'Tênis', 'Vôlei', 'Natação']
      },
      {
        'texto': "Se você pudesse ter qualquer superpoder, qual seria?",
        'respostas': [
          'Invisibilidade',
          'Voo',
          'Força Sobre-Humana',
          'Telecinese',
          'Telepatia'
        ]
      },
      {
        'texto': "Qual é a sua estação do ano favorita?",
        'respostas': ['Primavera', 'Verão', 'Outono', 'Inverno']
      },
      {
        'texto': "Qual é o último livro que você leu?",
        'respostas': [
          'Romance',
          'Ficção Científica',
          'Mistério',
          'História',
          'Biografia'
        ]
      },
      {
        'texto': "Qual é o seu animal de estimação favorito?",
        'respostas': ['Cachorro', 'Gato', 'Pássaro', 'Peixe', 'Cavalo']
      },
    ];

    List<Widget> respostas = [];

    for (String textoResp
        in perguntas[perguntaSelecionada]['respostas'] as List) {
      respostas.add(AnswersWidget(
        text: textoResp,
        onPressed: reponder,
      ));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.stormBlue,
        title: const Text(
          "Quiz App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionWidget(
              text: perguntas[perguntaSelecionada]['texto'].toString(),
            ),
            ...respostas
          ],
        ),
      ),
    );
  }
}
