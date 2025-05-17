import 'package:otyv/datasource/client/client.dart';
import 'package:otyv/datasource/datasource.dart';
import 'package:otyv/domain/entity/prompt.dart';

import '../main.dart';

class PromptDatasourceImp implements DataSource {
  final Client client;

  PromptDatasourceImp(this.client);

  Future<Prompt> getPrompt(int number, String letter) async {
    print("Entrou no datasource");
    print(number);
    print(letter);

    try {
      final List<Map<String, dynamic>> data = await supabase
          .from('prompts')
          .select('prompt_content, prompt_number, prompt_letter, id')
          .eq('prompt_number', number)
          .eq('prompt_letter', letter);
      if (data.isNotEmpty) {
        final promptContent = Prompt.fromJson(data[0]);
        return promptContent;
      } else {
        throw Exception('Prompt não encontrado');
      }
    } catch (error) {
      throw Exception('Erro ao buscar prompt específico: $error');
    }
  }
}
