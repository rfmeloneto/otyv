import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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

  runApp(const MainApp());
}
final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(''),
        ),
      ),
    );
  }
}
