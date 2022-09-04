import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc FLutter',
      home: Pantalla(),
    );
  }
}

class Pantalla extends StatefulWidget {
  const Pantalla({super.key});

  @override
  State<Pantalla> createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  bool _color1 = true;
  bool _color2 = true;
  bool _color3 = true;
  bool _color4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Container(
          width: 600,
          height: 120,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Flutter McFlutter",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Experienced App Developer",
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "address 1",
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "address 2",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Únete a un club con otras personas"),
                        ),
                      );
                      setState(() {});
                      _color1 = !_color1;
                    },
                    icon: Icon(
                      Icons.person,
                      color: _color1 ? Colors.black : Colors.indigo,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text("Cuenta regresiva para el evento: 31 días"),
                        ),
                      );
                      setState(() {});
                      _color2 = !_color2;

                    },
                    icon:  Icon(
                      Icons.alarm,
                      color: _color2 ? Colors.black : Colors.indigo,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Llama al número 4155550198"),
                        ),
                      );
                      setState(() {});
                      _color3 = !_color3;
                    },
                    icon:  Icon(
                      Icons.phone_android_rounded,
                      color: _color3 ? Colors.black : Colors.indigo,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Llama al celular 3317865113"),
                        ),
                      );
                      setState(() {});
                      _color4 = !_color4;
                    },
                    icon: Icon(
                      Icons.phone_android_rounded,
                      color: _color4 ? Colors.black : Colors.indigo,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
