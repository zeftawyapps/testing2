// create stateful widget with conatainer and text "page 2 "
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/change_color.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
 TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
DateTime dateTime = DateTime.now();;
 // get init from color changer
var color = Provider.of<ChangeColor>(context).color;
    return  Scaffold(
appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Container(

        child: Center(
          child:  GestureDetector(

            onTap: (){
              Navigator.of(context).pushNamed('/page3' );
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: color
              ),
            ),
          )
        ),
      ),
    );
  }
}
