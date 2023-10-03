import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';



// GoRouter configuration par ir entre pantallas
final approuter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

      GoRoute(
      path: '/buttons',
      name:  ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
      GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgreesScreen.name,
      builder: (context, state) => const ProgreesScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),

     GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
  ],
);