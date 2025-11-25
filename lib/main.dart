import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = 'número';

  void calcular(String tecla) {
    switch (tecla) {
      case '7':
        setState(() {
          numero = numero + tecla;
        });
        break;
      case 'AC':
        setState(() {
          numero = '0';
        });
        break;
      default:
        setState(() {
          numero = numero + tecla;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Calculadora'))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(numero, style: TextStyle(fontSize: 45))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('AC'),
                  child: Text('AC', style: TextStyle(fontSize: 40)),
                ),
                Text(''),
                Text(''),
                GestureDetector(
                  onTap: () => calcular('<X'),
                  child: Text('<X', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('7'),
                  child: Text('7', style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular('8'),
                  child: Text('8', style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular('9'),
                  child: Text('9', style: TextStyle(fontSize: 40)),
                ),
                Text('/', style: TextStyle(fontSize: 40)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('4'),
                  child: Text('4', style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular('5'),
                  child: Text('5', style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular('6'),
                  child: Text('6', style: TextStyle(fontSize: 40)),
                ),
                Text('-', style: TextStyle(fontSize: 40)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('1'),
                  child: Text('1', style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular('2'),
                  child: Text('2', style: TextStyle(fontSize: 40)),
                ),
                GestureDetector(
                  onTap: () => calcular('3'),
                  child: Text('3', style: TextStyle(fontSize: 40)),
                ),
                Text('X', style: TextStyle(fontSize: 40)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(onTap: () => calcular('0'), child: Text('0', style: TextStyle(fontSize: 40))),
                Text(',', style: TextStyle(fontSize: 40)),
                Text('=', style: TextStyle(fontSize: 40)),
                Text('+', style: TextStyle(fontSize: 40)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
