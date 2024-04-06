import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/mycolors.dart';
import 'package:flutterfeb/utils/textThemes.dart';

class HomePage1 extends StatelessWidget {
  var users = [
    {
      'name': "Abin",
      'phone': 9087654321,
      'pic': "assets/images/logingirl.png",
      "time": 1.20,
      "unread": 2
    },
    {
      'name': "Biya",
      'phone': 9988776655,
      'pic': "assets/images/orange.png",
      "time": 11.15,
      "unread": null
    },
    {
      'name': "Cera",
      'phone': 9087433321,
      'pic': "assets/images/pineapple.png",
      "time": 2.30,
      "unread": 2
    },
    {
      'name': "Vinu",
      'phone': 9087654321,
      'pic': "assets/images/pizza.png",
      "time": 11.30,
      "unread": 2
    },
    {
      'name': "Arjun",
      'phone': 9187654321,
      'pic': "assets/images/ramen.png",
      "time": 5.45,
      "unread": 1
    },
    {
      'name': "Dona",
      'phone': 99347654321,
      'pic': "assets/images/salad.png",
      "time": 5.00,
      "unread": null
    },
    {
      'name': "Neenu",
      'phone': 9087654321,
      'pic': "assets/images/tiger.png",
      "time": 7.30,
      "unread": null
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Contacts",
          style: MyTextThemes.textHeading,
        ),
        centerTitle: true,
        backgroundColor: MyColors.textColors,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: List.generate(
              users.length,
              (index) => Card(
                    color: MyColors.basicColor,
                    child: ListTile(
                      leading: CircleAvatar(
                        //backgroundColor: MyColors.iconColors,
                        backgroundImage: AssetImage("${users[index]['pic']}"),
                      ),
                      trailing: _buildWidget(index),
                      title: Text("${users[index]['name']}"),
                      subtitle: Text("${users[index]['phone']}"),
                    ),
                  )),
        ),
      ),
    );
  }

  Widget _buildWidget(int index) {
    if (users[index]['unread'] == null) {
      return Text("${users[index]['time']}");
    } else {
      return Wrap(
        direction: Axis.vertical,
        children: [
          Text("${users[index]['time']}"),
          CircleAvatar(
            minRadius: 6,
            maxRadius: 14,
            child: Text("${users[index]['unread']}"),
          )
        ],
      );
    }
  }
}
