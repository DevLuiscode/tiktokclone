part of 'home_page_controller_cubit.dart';

class HomePageControllerState {
  final PageController pageController;
  final int page;

  const HomePageControllerState({
    required this.pageController,
    required this.page,
  });

  HomePageControllerState copyWith({
    PageController? pageController,
    int? page,
  }) =>
      HomePageControllerState(
        pageController: pageController ?? this.pageController,
        page: page ?? this.page,
      );
}
