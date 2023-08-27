import 'package:flutter/material.dart';
import 'package:stable_horde_flutter/modex_box/model_box_home_widget.dart';

class ModelBoxApp extends StatefulWidget {
  const ModelBoxApp({super.key});

  @override
  State<ModelBoxApp> createState() => _ModelBoxAppState();
}

class _ModelBoxAppState extends State<ModelBoxApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Model Box',
      theme: ThemeData(
        primaryColor: Colors.white12,
      ),
      home: ModelBoxHome(),
    );
  }
}

