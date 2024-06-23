import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({super.key, required this.num});
  final num;

  @override
  Widget build(BuildContext context) {
    // String temp = '';
    // for (int i = 1; i < 10; i++) {
    //   temp += '\n$num X $i = ${num * i}';
    // }
    double widthOfScreen = MediaQuery.of(context).size.width;
    double heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                        width: .5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(blurRadius: 4, color: Colors.grey)
                      ]),
                  alignment: Alignment.center,
                  width: widthOfScreen,
                  height: heightOfScreen * .05,
                  child: Text('${num[index]}'),
                ),
              );
            }));
  }
}
