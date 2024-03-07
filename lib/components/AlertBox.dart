import 'package:flutter/material.dart';
import 'package:todoapp/components/mybutton.dart';

class AlertBox extends StatelessWidget {
  final mycontroller;
  final Savetask;
  final Cancel;
  const AlertBox(
      {super.key,
      required this.mycontroller,
      required this.Savetask,
      required this.Cancel});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[600],
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(
                  hintText: "Enter the task",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Mybutton(text: "Save", onpressed: Savetask),
                Mybutton(text: "Cancel", onpressed: Cancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
