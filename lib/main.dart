import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:otyv/datasource/client/dio_client.dart';
import 'package:otyv/datasource/prompt_datasource_imp.dart';
import 'package:otyv/presenter/prompt_page.dart';
import 'package:otyv/viewmodel/prompt_viewmodel.dart';
import 'package:otyv/datasource/repository_prompt_imp.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
    // const supabaseUrl = 'https://ovywrdyprqmvaortudua.supabase.co';
    // const supabaseKey = String.fromEnvironment('SUPABASE_KEY');
    await dotenv.load(fileName: ".env");
    await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_KEY']!, 
  );

  runApp(MainApp());

}

final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => DioClient()),
        Provider<PromptDatasourceImp>(create: (context)=> PromptDatasourceImp(context.read<DioClient>())),
        Provider<RepositoryPromptImp>(create: (context)=> RepositoryPromptImp(context.read<PromptDatasourceImp>())),
        ChangeNotifierProvider<PromptViewModel>(create: (context)=> PromptViewModel(context.read<RepositoryPromptImp>()))
      ],
      child: MaterialApp(
        home: PromptPage(), 
      ),
    );
  }
}

