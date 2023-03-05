import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckListWidget extends StatefulWidget {
  final String task;
  final size;
  const CheckListWidget({super.key, required this.task, this.size = 18.0});

  @override
  State<CheckListWidget> createState() => _CheckListWidgetState();
}

class _CheckListWidgetState extends State<CheckListWidget> {
  bool isTaskDone = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: size.height * 0.06,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: isTaskDone == true
              ? Color.fromARGB(255, 28, 64, 83)
              : Color(0xFF336882),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${widget.task}\t",
              style: GoogleFonts.roboto(
                color: Color(
                  0xFFF3FAFE,
                ),
                decoration: isTaskDone == true
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontSize: widget.size,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              // width: double.infinity,
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {
                    isTaskDone = true;
                    setState(() {});
                  },
                  icon: Icon(Icons.done),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
