import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorsScheme = ColorScheme.fromSeed(
  //seedColor: const Color.fromARGB(255, 96, 59, 181),
  seedColor: const Color.fromARGB(255, 59, 126, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 99, 125),
  brightness: Brightness.dark,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorsScheme,
        appBarTheme: AppBarTheme(
            backgroundColor: kColorsScheme.onPrimaryContainer,
            foregroundColor: kColorsScheme.onPrimary),
        cardTheme: const CardTheme().copyWith(
          color: kColorsScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorsScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorsScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
