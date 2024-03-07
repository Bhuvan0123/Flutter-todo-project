import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/components/AlertBox.dart';
import 'package:todoapp/components/todotile.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myc = TextEditingController();
  void savetasknew() {
    setState(() {
      todolist.add([myc.text, false]);
    });
    Navigator.of(context).pop();
  }

  List todolist = [
    ["first task", false],
    ["second task", false]
  ];
  void changetick(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  void addtask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertBox(
            mycontroller: myc,
            Savetask: savetasknew,
            Cancel: () {
              Navigator.of(context).pop();
            });
      },
    );
  }

  void deleteitem(int index) {
    setState(() {
      todolist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text(
            'To do',
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (context, index) {
            return Todotile(
              taskname: todolist[index][0],
              taskcompleted: todolist[index][1],
              onChanged: (value) {
                changetick(value, index);
              },
              deleteitem: (context) => deleteitem(index),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addtask,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
