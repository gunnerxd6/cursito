import 'package:cursito/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(primaryColor: Colors.green),
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.indigoAccent),
      themeMode: ThemeMode.system,
      getPages: routes(),
      initialRoute: '/login',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("Cursito"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  hintText: "Aqui teni rigo querido",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            ElevatedButton(
                onPressed: () {
                  print(_controller.text);
                },
                child: Text("Ok"))
          ],
        ));
  }
}
