import 'package:flutter/material.dart';
import 'package:otyv/presenter/viewmodel/select_game_viewmodel.dart';
import 'package:otyv/shared/widgets/adptable.dart';
import 'package:provider/provider.dart';

class SelectGamePage extends StatefulWidget {
  const SelectGamePage({super.key});

  @override
  State<SelectGamePage> createState() => _SelectGamePageState();
}

class _SelectGamePageState extends State<SelectGamePage> {
  @override
  void initState() {
    super.initState();
    context.read<SelectGameViewmodel>().getGames();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Adaptable(
        screenWidth: screenWidth,
        children: [Text("Teste"), Text("Teste"), Text("Teste")],
      ),
    );
  }
}
