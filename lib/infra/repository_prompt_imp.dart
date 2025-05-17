import 'package:otyv/datasource/prompt_datasource_imp.dart';
import 'package:otyv/domain/entity/prompt.dart';
import 'package:otyv/domain/repository/repository.dart';


class RepositoryPromptImp implements Repository {
  final PromptDatasourceImp datasource;

  RepositoryPromptImp(this.datasource);

  Future<Prompt> getPrompt(int number, String letter) async {
    print("Entrou no repository");
    final data = await datasource.getPrompt(number, letter);
    return data;
  }

  }

