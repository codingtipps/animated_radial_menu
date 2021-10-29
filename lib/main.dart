import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF222850),
        title: Text('Animated Radial Menu'),
      ),
      body: Stack(
          children: [
            RadialMenu(
              children: [
                RadialButton(
                    icon: Icon(Icons.ac_unit),
                    buttonColor: Colors.teal,
                    onPress: () => print('ac_unit')),
                RadialButton(
                    icon: Icon(Icons.camera_alt),
                    buttonColor: Colors.green,
                    onPress: () => print('camera_alt')),
                RadialButton(
                    icon: Icon(Icons.map),
                    buttonColor: Colors.orange,
                    onPress: () => print('map')),
                RadialButton(
                    icon: Icon(Icons.access_alarm),
                    buttonColor: Colors.indigo,
                    onPress: () => print('access_alarm')),
                RadialButton(
                    icon: Icon(Icons.watch),
                    buttonColor: Colors.pink,
                    onPress: () => print('watch')),
                RadialButton(
                    icon: Icon(Icons.settings),
                    buttonColor: Colors.blue,
                    onPress: () => print('settings')),
                RadialButton(
                    icon: Icon(Icons.mail_outline),
                    buttonColor: Colors.yellow,
                    onPress: () => print('mail_outline')),
                RadialButton(
                    icon: Icon(Icons.logout),
                    buttonColor: Colors.red,
                    onPress: () => print('logout')),
              ],
            ),
          ],
        ),);
  }
}
