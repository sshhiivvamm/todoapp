import 'package:flutter/material.dart';
import 'package:todoapp/util/mybuttons.dart';

class DialogBox extends StatefulWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        padding: const EdgeInsets.only(right: 10, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellow,
        ),
        height: 200,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: widget.controller,
              decoration: const InputDecoration(
                  fillColor: Colors.black,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: "Add a new Task",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(onPressed: widget.onCancel, text: "CANCEL"),
                MyButton(onPressed: widget.onSave, text: "SAVE"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
