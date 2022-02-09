import 'package:flutter/material.dart';
import 'package:menu_test/data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                for (int i = 0; categories.length > i; i++)
                  TextButton(
                    onPressed: () {
                      setState(() => selectNo = i);
                    },
                    child: Text(categories[i].name),
                  )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: categories[selectNo].vehicles.length,
                  itemBuilder: (itemBuilder, index) {
                    var vehicle = categories[selectNo].vehicles[index];
                    return Container(
                      height: 150,
                      width: 150,
                      margin: const EdgeInsets.all(4),
                      color: Colors.green.shade100,
                      child: Center(
                        child: Text(
                          vehicle.name,
                          style: const TextStyle(fontSize: 40),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
