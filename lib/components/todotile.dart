import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Todotile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext?) deleteitem;
  Todotile({
    super.key,
    required this.taskname,
    required this.taskcompleted,
    required this.onChanged,
    required this.deleteitem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      // child: Slidable(
      //   endActionPane: ActionPane(motion: StretchMotion(), children: [
      //     SlidableAction(
      //       onPressed: deleteitem,
      //       icon: Icons.delete,
      //       backgroundColor: Colors.red,
      //       borderRadius: BorderRadius.circular(12),
      //     )
      //   ]),
      //
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskcompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(taskname,
                style: TextStyle(
                    decoration: taskcompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none)),
          ],
        ),
      ),
    );
  }
}
