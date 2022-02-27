import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Providers/TaskAdd.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Todo Task Page"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "Daily Task",
            style: TextStyle(fontSize: 40, color: Colors.white),
          )),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              // height: double.maxFinite,
              // width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.lime,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<TaskAdd>(
                  builder: (context,TaskAdd, child) => ListView.builder(
                    itemCount: TaskAdd.tasklist.length,
                    itemBuilder: (context, index) => Container(
                      child: ListTile(
                        title: Text(TaskAdd.tasklist[index].title),
                        subtitle: Text(TaskAdd.tasklist[index].subtitle),
                        trailing: Icon(Icons.check_circle),
                      ),
                    ),
                  )
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<TaskAdd>().addtasklist(),
        child: Icon(Icons.add),
      ),
    );
  }
}
