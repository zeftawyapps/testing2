// create stateful widget with conatainer and text "page 2 "
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/change_color.dart';

class Page3 extends StatefulWidget {
  Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String name = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    dd d = dd();
    var colorChanger = Provider.of<ChangeColor>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Page 3"),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2, //
                      child: GestureDetector(
                        onTap: () {
                          colorChanger.color = Colors.blue;
                        },
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        colorChanger.color = Colors.red;
                      },
                      child: Container(
                        width: 50,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          colorChanger.color = Colors.green;
                        },
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  var json = jsonEncode(d.ddds().toDart);
                  print(json);
                },
                child: Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ));
  }
}

class dd {
  String name = "moaz";
  int age = 5;

  ({String name, int age}) ddds() {
    return (name: name, age: age);
  }
}
