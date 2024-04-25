import 'package:flutter/material.dart';

class HeroMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Main"),
      ),
      body: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => HeroDetails())),
          child: Hero(
              flightShuttleBuilder:
                  (context, animation, direction, fromctx, toctx) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: fromctx.widget,
                );
              },
              tag: 'heroanim',
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/background.png"))),
              ))),
    );
  }
}

class HeroDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Details"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => HeroMain())),
          child: Hero(
              tag: 'heroanim',
              child: Container(
                height: 400,
                width: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/background.png"))),
              )),
        ),
      ),
    );
  }
}
