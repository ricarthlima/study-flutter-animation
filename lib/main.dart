import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: ImplicitlyAnimation(),
    );
  }
}

class ImplicitlyAnimation extends StatefulWidget {
  @override
  _ImplicitlyAnimationState createState() => _ImplicitlyAnimationState();
}

class _ImplicitlyAnimationState extends State<ImplicitlyAnimation> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment.center,
              color: Colors.black,
              width: status ? 300 : 0,
              height: 200,
              child: Text(
                "Ricarth Lima",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    status = !status;
                    print(status);
                  });
                },
                child: Text("Do it!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
