import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otyv/viewmodel/prompt_viewmodel.dart';
import 'package:provider/provider.dart';

class PromptPage extends StatelessWidget {
  PromptPage({super.key});

  final _random = Random(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerador de Prompt'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                context.watch<PromptViewModel>().prompt,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("botão");
                final number = _random.nextInt(10) + 1; 
                context.read<PromptViewModel>().getPrompt(number, "a"); 
              },
              child: Text("Gerar Novo Prompt"), 
            )
          ],
        ),
      ),
    );
  }
}
