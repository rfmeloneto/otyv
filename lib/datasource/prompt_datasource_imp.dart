import 'package:otyv/datasource/client/client.dart';
import 'package:otyv/datasource/datasource.dart';
import 'package:otyv/domain/entity/prompt.dart';

import '../main.dart';

class PromptDatasourceImp implements DataSource{
  final Client client;

  PromptDatasourceImp(this.client);

  Future<Prompt> getPrompt(int number, String letter) async {
  try {
    final List<Map<String, dynamic>> data = await supabase
        .from('prompts')
        .select('prompt_content') 
        .eq('prompt_number', number) 
        .eq('prompt_letter', letter); 
    if (data.isNotEmpty) {
      return Prompt.fromJson(data[0]);
    } else {
      return Prompt(content: "vazio", id: 0, letter: "", number: 0); 
    }
  } catch (error) {
    print('Erro ao buscar prompt específico: $error'); 
    return Prompt(content: error.toString(), id: 0, letter: "", number: 0);
  }
}

}