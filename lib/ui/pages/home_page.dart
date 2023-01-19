import 'package:flutter/material.dart';
import 'package:todo/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.brightness_high_sharp),
          onPressed: () {
            ThemeServices().switchTheme();
          },
        ),
      ),
      body: Container(),
    );
  }
}
