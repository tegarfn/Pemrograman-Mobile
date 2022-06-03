import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
}

@override
Widget build(BuildContext context) {
  return ChangeNotifierProvider(
    create: (context) => DataString(),
    child: MaterialApp(
      title: 'Contoh Provider',
      home: Scaffold(
        appBar: AppBar(
          title: const MyText(),
        ),
        body: const Level1(),
      ),
    ),
  );
}

class Level1 extends StatelessWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Level2();
  }
}

class Level2 extends StatelessWidget {
  const Level2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const MyTextField(),
          padding: const EdgeInsets.all(20.0),
        ),
        const Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of(context).data);
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of(context, listen: false).data);
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newValue) {
        Provider.of(context, listen: false).changeString(newValue);
      },
    );
  }
}

class DataString extends ChangeNotifier {
  String data = 'Contoh Provider';
  void changeString(String newValue) {
    data = newValue;
    notifyListeners();
  }
}
