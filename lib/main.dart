import 'package:counter_exam/core/routs.dart';
import 'package:counter_exam/logic/counter_provider.dart';
import 'package:counter_exam/presentation/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MaterialApp(
        onGenerateRoute : RouteGenerator.generateRoute,
        home: CounterPage(),
      ),
    ),
  );
}
