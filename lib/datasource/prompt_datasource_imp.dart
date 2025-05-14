import 'package:otyv/datasource/datasource.dart';

class PromptDatasourceImp implements DataSource{

  Future<String> getPrompt() async {
    return Future.value("prompt");
  }

}