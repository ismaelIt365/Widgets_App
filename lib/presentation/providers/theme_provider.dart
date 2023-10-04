import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Para el modo oscuro o claro
final isDarkModeProvider = StateProvider((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = ESTADO = new AppTheme()
  ThemeNotifier() : super(AppTheme());

//Metodo para cambiar a modo oscuro o claro
  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

//Metodo para cambiar el color segun el seleccionado
  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
