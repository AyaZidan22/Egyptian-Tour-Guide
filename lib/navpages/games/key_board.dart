import 'package:flutter/material.dart';

class KeyboardGame extends StatefulWidget {
  const KeyboardGame({super.key});

  @override
  KeyboardGameState createState() => KeyboardGameState();
}

class KeyboardGameState extends State<KeyboardGame> {
  final List<Widget> displayWidgets = [];
  final List<String> keys = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  void printChar(String characterTyped) {
    setState(() {
      displayWidgets.add(Image.asset(
        'img/keyboard/$characterTyped/$characterTyped.png',
        width: 80,
      ));
    });
  }

  void addSpace() {
    setState(() {
      displayWidgets.add(const SizedBox(width: 24));
    });
  }

  void backspace() {
    setState(() {
      if (displayWidgets.isNotEmpty) {
        displayWidgets.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Wrap(
                  children: displayWidgets,
                ),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 6,
                    padding: const EdgeInsets.all(16.0),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: keys.map((key) {
                      return GestureDetector(
                        onTap: () {
                          printChar(key);
                        },
                        child: Image.asset(
                          'img/keyboard/$key/$key.jpg',
                          width: 30,
                          height: 30,
                          fit: BoxFit.contain,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: addSpace,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0XFFAB2117),
                        backgroundColor: const Color(0xFFFAC738),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Space'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: backspace,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0XFFAB2117),
                        backgroundColor: const Color(0xFFFAC738),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Icon(Icons.backspace_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
