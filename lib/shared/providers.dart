import 'package:otyv/datasource/client/dio_client.dart';
import 'package:otyv/datasource/game_datasource.dart';
import 'package:otyv/datasource/prompt_datasource_imp.dart';
import 'package:otyv/infra/repository_game_imp.dart';
import 'package:otyv/infra/repository_prompt_imp.dart' show RepositoryPromptImp;
import 'package:otyv/presenter/viewmodel/prompt_viewmodel.dart'
    show PromptViewModel;
import 'package:otyv/presenter/viewmodel/select_game_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProvidersList {
  static List<SingleChildWidget> providers = [
    Provider(create: (context) => DioClient()),
    Provider<PromptDatasourceImp>(
      create: (context) => PromptDatasourceImp(context.read<DioClient>()),
    ),
    Provider<RepositoryPromptImp>(
      create:
          (context) => RepositoryPromptImp(context.read<PromptDatasourceImp>()),
    ),
    Provider<GameDataSource>(
      create: (context) => GameDataSource(context.read<DioClient>()),
    ),
    Provider<RepositoryGameImp>(
      create:
          (context) =>
              RepositoryGameImp(gameDataSource: context.read<GameDataSource>()),
    ),
    ChangeNotifierProvider<SelectGameViewmodel>(
      create:
          (context) => SelectGameViewmodel(context.read<RepositoryGameImp>()),
    ),
    ChangeNotifierProvider<PromptViewModel>(
      create: (context) => PromptViewModel(context.read<RepositoryPromptImp>()),
    ),
  ];
}
