import 'package:flutter/material.dart';
import 'package:flutterfeb/model/productModel.dart';
import 'package:flutterfeb/utils/textThemes.dart';

class ListView_separated extends StatelessWidget {
  var datas = [
    Data(
        name: "Orange",
        doubledata: 80,
        image: "assets/images/orange.png",
        stringdata: "Orange is vitamin c rich fruit"),
    Data(
        name: "PineApple",
        doubledata: 100,
        image: "assets/images/pineapple.png",
        stringdata: "Pineapple  is vitamin rich fruit"),
    Data(
        name: "PineApple",
        doubledata: 100,
        image: "assets/images/pineapple.png",
        stringdata: "Pineapple  is vitamin rich fruit"),
    Data(
        name: "PineApple",
        doubledata: 100,
        image: "assets/images/pineapple.png",
        stringdata: "Pineapple  is vitamin rich fruit"),
    Data(
        name: "PineApple",
        doubledata: 100,
        image: "assets/images/pineapple.png",
        stringdata: "Pineapple  is vitamin rich fruit"),
    Data(
        name: "PineApple",
        doubledata: 100,
        image: "assets/images/pineapple.png",
        stringdata: "Pineapple  is vitamin rich fruit"),
    Data(
        name: "PineApple",
        doubledata: 100,
        image: "assets/images/pineapple.png",
        stringdata: "Pineapple  is vitamin rich fruit"),
  ];
  //List<String> divider = ["Fruits", "Vegetables", "Groceries","Fruits", "Vegetables", "Groceries","Vegetables"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("ListView 3"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.green[300],
            child: const Icon(Icons.add),
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text('Settings')),
              const PopupMenuItem(child: Text('Privacy Policy')),
            ];
          })
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1704975986930-0c09f513c985?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                    // color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('${datas[index].image}'),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          datas[index].name!,
                          style: MyTextThemes.textHeading,
                        ),
                        Text(
                          datas[index].stringdata!,
                          style: MyTextThemes.bodyTextStyle,
                        ),
                        Text(
                          '\$${datas[index].doubledata}',
                          style: MyTextThemes.bodyTextStyle,
                        )
                      ],
                    ),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 3 == 0) {
              return Text('Fruits',style: MyTextThemes.textHeading,);
            } else {
              return Container();
            }
          },
          itemCount: datas.length),
    );
  }
}
