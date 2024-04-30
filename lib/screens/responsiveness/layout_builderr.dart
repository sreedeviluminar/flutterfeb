import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI"),
      ),
      body: ResponsiveLayouut(),
    );
  }
}

class ResponsiveLayouut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return WideLayOut();
      } else {
        return SmallLayout();
      }
    });
  }
}

class SmallLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.green,
            height: 200,
            child: const Center(
              child: Text("Column 1"),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.yellow,
            height: 300,
            child: const Center(
              child: Text("Column 2"),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
            height: 200,
            child: const Center(
              child: Text("Column 3"),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 100,
            child: const Center(
              child: Text("Column 4"),
            ),
          ),
        )
      ],
    );
  }
}

class WideLayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.green,
            height: 200,
            child: const Center(
              child: Text("Column 1"),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.yellow,
            height: 300,
            child: const Center(
              child: Text("Column 2"),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
            height: 200,
            child: const Center(
              child: Text("Column 3"),
            ),
          ),
        )
      ],
    );
  }
}
