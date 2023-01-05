part of 'page_changer_bloc.dart';

@immutable
abstract class PageChangerState {}

class SplashScreenState extends PageChangerState {
  SplashScreenState({required this.isLoaded});
  final bool isLoaded;
}
