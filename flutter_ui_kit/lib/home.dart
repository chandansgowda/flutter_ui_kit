import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/coffee_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/crypto_app/screens/home_screen.dart';


List<Map<String, String>> AppPaths=[{'name':"Coffee App",'path':CoffeeAppHomeScreen.routeName},{'name':"Crypto App",'path':CryptoAppHomeScreen.routeName}];
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Kit"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: AppPaths.map((screen) => GestureDetector(
              onTap: (){
                final String path = screen['path'] as String;
                Navigator.pushNamed(context, path);
                //Navigator.of(context).pushNamed(path);
              },
              child: Card(
                elevation: 3.0,
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(screen['name'].toString(),style: TextStyle(fontSize: 20),),
                ),
              ),
            )).toList(),
          ),
        ),
      ),
    );
  }
}
