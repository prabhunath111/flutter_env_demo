import 'package:flutter/material.dart';

import 'environment_config.dart';

class AppLoader {
  Future<void> loadApp(String path) async {
    await dotEnv.load(fileName: path);
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    debugPrint("Line25: ${EnvironmentConfiguration.baseUrlApi}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App Bar"),
        ),
        body: const Center(
          child: Text("My ENV App"),
        ),
      ),
    );
  }
}
