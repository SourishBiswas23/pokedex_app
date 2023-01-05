part of 'page_changer_bloc.dart';

@immutable
abstract class PageChangerEvent {}

class SplashScreenLoaded extends PageChangerEvent {}

class AppInitialized extends PageChangerEvent {}
