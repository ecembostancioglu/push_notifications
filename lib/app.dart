import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    dotenv.testLoad(fileInput: 'APPID');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//DOT ENV SIKINTILI