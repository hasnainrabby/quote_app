import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "There is always light. If only we’re brave enough to see it. If only we’re brave enough to be it.",
    "If you want the rainbow, you have to put up with the rain.",
    "Those who say it can’t be done are usually interrupted by others doing it.",
    "If it doesn't make the world better, don't do it.",
    "Hope will never be silent."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Positive Quote",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      backgroundColor: Colors.black45,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  width: 400,
                  height: 300,
                  margin: const EdgeInsets.only(left:10.0,right:10.0,top: 15.0,bottom: 15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.teal
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(thickness: 2.5,color: Colors.white70,),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextButton.icon(
                  onPressed: _showQuote,
                  icon: const Icon(Icons.table_rows_sharp,color: Colors.grey,),
                  label: const Text("Pressed Here!")),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment our index/counter
    setState(() {
      _index += 1;
    });
  }
}
