import 'package:flutter/material.dart';
import 'package:otyv/viewmodel/repository_prompt_imp.dart';

class PromptViewModel extends ChangeNotifier{
  final RepositoryPromptImp repository;
  PromptViewModel(this.repository);

  String _prompt = " ";
  String get prompt => _prompt;

  Future<void> getPrompt(int number, String letter) async {
    try {
       final data = await repository.getPrompt(number, letter);
       _prompt = data.content;
       notifyListeners();
    }
    catch (e) {
      print("deu erro");
    }
  }

}