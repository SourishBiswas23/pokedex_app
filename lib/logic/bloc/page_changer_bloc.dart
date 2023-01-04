import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokedex_app/routes.dart';

part 'page_changer_event.dart';
part 'page_changer_state.dart';

class PageChangerBloc extends Bloc<PageChangerEvent, PageChangerState> {
  PageChangerBloc() : super(SplashScreenState(isLoaded: false)) {
    on<SplashScreenLoaded>(
      (event, emit) async {
        await AppNavigator.pushReplace(route: Routes.home);
        emit(SplashScreenState(isLoaded: true));
      },
    );
  }
}
