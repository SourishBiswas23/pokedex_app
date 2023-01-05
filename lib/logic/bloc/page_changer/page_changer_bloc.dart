import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedex_app/routes.dart';

part 'page_changer_event.dart';
part 'page_changer_state.dart';

class PageChangerBloc extends Bloc<PageChangerEvent, PageChangerState> {
  PageChangerBloc() : super(SplashScreenState(isLoaded: false)) {
    on<SplashScreenLoaded>(
      (event, emit) async {
        isSplashScreenLoaded = true;
        if (isAppInitialized) {
          await AppNavigator.pushReplace(route: Routes.home);
        }
      },
    );
    on<AppInitialized>((event, emit) async {
      isAppInitialized = true;
      if (isSplashScreenLoaded) {
        await AppNavigator.pushReplace(route: Routes.home);
      }
    });
  }

  bool isSplashScreenLoaded = false;
  bool isAppInitialized = false;
}
