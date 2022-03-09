import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fts1/SendFile/sender_UI.dart';
import 'cards.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            const SizedBox(
                              height: 50,
                            ),
                            Expanded(
                              child: usercards(
                                CardImage: Expanded(
                                    child: Image.asset("assets/send.png")),
                                CardText: "Send File",
                                onPress: () {
                                  Future.delayed(Duration.zero,()
                                  {
                                    Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                    builder: (BuildContext context) => const SenderUI(),
                                  ),
                                    );
                                  }


                                  );
                                },
                              ),
                            ),
                            Expanded(
                                child: usercards(
                                    CardImage: Expanded(
                                      child: Image.asset("assets/recieve.png"),
                                    ),
                                    CardText: "Recieve File",
                                    onPress: () {})),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            const SizedBox(
                              height: 50,
                            ),
                            Expanded(
                              child: usercards(
                                  CardImage: Expanded(
                                      child:
                                          Image.asset("assets/reportpng.png")),
                                  CardText: "Records/Reports",
                                  onPress: () {}),
                            ),
                            Expanded(
                                child: usercards(
                                    CardImage: Expanded(
                                        child:
                                            Image.asset("assets/pending.png")),
                                    CardText: "Pending",
                                    onPress: () {})),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            const SizedBox(
                              height: 50,
                            ),
                            Expanded(
                                child: usercards(
                                    CardImage: Expanded(
                                        child: Image.asset(
                                      "assets/settings.png",
                                      fit: BoxFit.fitHeight,
                                    )),
                                    CardText: "Settings",
                                    onPress: () {})),
                            Expanded(
                                child: usercards(
                                    CardImage: Expanded(
                                        child:
                                            Image.asset("assets/profile.png")),
                                    CardText: "Profile",
                                    onPress: () {})),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
