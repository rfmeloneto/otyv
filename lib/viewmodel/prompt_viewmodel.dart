import 'package:flutter/material.dart';
import 'package:otyv/datasource/repository_prompt_imp.dart';

class PromptViewModel extends ChangeNotifier {
  final RepositoryPromptImp repository;
  PromptViewModel(this.repository);

  String _prompt = "Pressione o botão para gerar um prompt.";
  String get prompt => _prompt;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> getPrompt(int number, String letter) async {
    _isLoading = true;
    _errorMessage = null;

    try {
      final data = await repository.getPrompt(number, letter);
      _prompt = data.content;
      print("Entrou no viewmodel o prompt é $prompt");
    } catch (e) {
      _errorMessage = "Falha ao buscar o prompt. Tente novamente.";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
