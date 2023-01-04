import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_changer_event.dart';
part 'page_changer_state.dart';

class PageChangerBloc extends Bloc<PageChangerEvent, PageChangerState> {
  PageChangerBloc() : super(PageChangerInitial()) {
    on<PageChangerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
