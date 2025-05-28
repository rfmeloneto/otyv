import 'package:flutter/material.dart';
import 'package:otyv/presenter/viewmodel/select_game_viewmodel.dart';
import 'package:otyv/shared/widgets/adptable.dart';
import 'package:otyv/shared/widgets/clickcable_card.dart';
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
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF593C36),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.8,
                    width: screenWidth * 0.6,
                    child: Adaptable(
                      screenWidth: screenWidth,
                      children: [
                        Consumer<SelectGameViewmodel>(
                          builder: (context, selectGameViewModel, child) {
                            if (selectGameViewModel.games.isEmpty) {
                              return const Center(
                                child: Text("Nenhum jogo cadastrado."),
                              );
                            }
                            return Expanded(
                              child: ListView.builder(
                                itemCount: selectGameViewModel.games.length,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: 100,
                                    width: 200,
                                    child: ClickcableCard(
                                      color: Color(0xFFD9B7B0),
                                      trail: Icon(Icons.delete),
                                      elevation: 2.0,
                                      onClickTail: () {
                                        context.read<SelectGameViewmodel>()
                                            .deleteGame(
                                              selectGameViewModel
                                                .games[index]
                                                  .id,
                                            );
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
                                      ),

                                      onTap: () {
                                        print("oi");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "ID do Jogo: ${selectGameViewModel.games[index].id.toString()}",
                                            ),
                                            Text(
                                              "Prompt do jogo: ${selectGameViewModel.games[index].currentNumber.toString()}${selectGameViewModel.games[index].currentLetter}",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<SelectGameViewmodel>().newGame();
                    },
                    icon: const Icon(Icons.add_box),
                    label: Text("Novo Jogo"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
