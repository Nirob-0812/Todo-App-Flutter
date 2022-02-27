import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:to_do_app/Providers/Counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Todo Application"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "09 : 42 PM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Saturday, February",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.topCenter,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text(
                    "Your Last Pressed: ${context.watch<Counter>().Count}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "${context.watch<Counter>().Count}",
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                      onPressed: () {Navigator.pushNamed(context, "/Second");}, child: Text("Pressed For Next Page"))
                ],
              ),
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
