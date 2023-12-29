import 'package:flutter/material.dart';

class Player {
  String name;
  Player({required this.name});

  // String? name;
  // Player({this.name});
}

void main() {
  runApp(const App());
}

// stateful widget tutorial

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle
                  ? const MyLargeTitle()
                  : const Text(
                      'nothing to see',
                    ),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
                iconSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Column(
      children: [
        Text(
          "My Large Title",
          style: TextStyle(
            fontSize: 30,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("Count: $count"),
        ),
      ],
    );
  }
}
