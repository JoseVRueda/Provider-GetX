import 'package:f_getxstate_demo/ui/providers/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/pages/main_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => CountProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GetX Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('GetX Demo'),
          ),
          body: const MainPage(),
        ));
  }
}
