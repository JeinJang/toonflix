import 'package:flutter/material.dart';
import 'package:toonflix/screens/webtoon/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  // List<WebtoonModel> webtoons = [];
  // bool isLoading = true;

  // void waitForWebToons() async {
  //   webtoons = await ApiService.getTodaysToons();
  //   isLoading = false;
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   waitForWebToons();
  // }

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
