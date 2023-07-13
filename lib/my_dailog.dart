import 'package:flutter/material.dart';
class MyDailog extends StatelessWidget {
  const MyDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      child: Container(
        height: 50,
        child: Column(
          children: [
            Text("Are you sure you want to delete this item?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Yes"),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
