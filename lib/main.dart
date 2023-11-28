import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String lang="dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("example of RadioListTile"),
        backgroundColor: Colors.green,
      ),
      body:Column(
        children: [
          const Text("select your favorite language"),
          RadioListTile(
              activeColor: Colors.blue,

              tileColor: Colors.pink.shade100,
              title: const Text("dart"),
              value: "dart",
              groupValue: lang,
              onChanged: (value)
          {
            setState(() {
              lang=value!;
            });
          }),
          RadioListTile(
              tileColor: Colors.orange.shade100,
              activeColor: Colors.blue,
              title: const Text("java"),
              value: "java",
              groupValue: lang,
              onChanged: (value)
              {
                setState(() {
                  lang=value!;
                });
              }),
          RadioListTile(
              activeColor: Colors.blue,
              tileColor: Colors.red.shade100,
              title: const Text("c++"),
              value: "c++",
              groupValue: lang,
              onChanged: (value)
              {
                setState(() {
                  lang=value!;
                });
              }),
          Text("your favorite language is $lang"),
        ],
      )
    );
  }
}

