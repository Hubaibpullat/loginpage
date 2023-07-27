import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/login.dart';

// ignore: must_be_immutable
class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  List? images = [
    "assets/cold coffee.jpg",
    "assets/cold tea.jpg",
    "assets/Frappuccino.jpg",
    "assets/hot tea.jpg",
    "assets/Ice creams.jpg",
    "assets/cold coffee.jpg",
    "assets/cold tea.jpg",
    "assets/Frappuccino.jpg",
    "assets/hot tea.jpg",
    "assets/Ice creams.jpg",
    "assets/cold coffee.jpg",
    "assets/cold tea.jpg",
    "assets/Frappuccino.jpg",
    "assets/hot tea.jpg",
    "assets/Ice creams.jpg",
    "assets/cold coffee.jpg",
    "assets/cold tea.jpg",
    "assets/Frappuccino.jpg",
    "assets/hot tea.jpg",
    "assets/Ice creams.jpg",
  ];

  List? names = [
    "Cold coffee",
    "Cold tea",
    "Frappuccino",
    "Hot tea",
    "Ice creams",
    "Cold coffee",
    "Cold tea",
    "Frappuccino",
    "Hot tea",
    "Ice creams",
    "Cold coffee",
    "Cold tea",
    "Frappuccino",
    "Hot tea",
    "Ice creams",
    "Cold coffee",
    "Cold tea",
    "Frappuccino",
    "Hot tea",
    "Ice creams",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ITEMS'),
          actions: [
            IconButton(
                onPressed: () {
                  signout(context);
                },
                icon: Icon(Icons.exit_to_app)),
          ], 
        ),
        body: SafeArea(
            child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text(names![index]),
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(images![index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 1,
              color: Colors.grey,
            );
          },
          itemCount: 20,
        )));
    // body: SafeArea(
    //   child: Center(
    //     child: Container(
    //       child: Column(),
    //       ),
    //     ),
    //   ),
    // );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (Route) => false);
  }
}
