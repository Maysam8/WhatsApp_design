import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/ItemModel.dart';
import 'package:whatsapp/mainscreen.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  List<ItemModle> listItemModle = [
    ItemModle(
        name: "maysam", time: "12.09 pm ", image: AssetImage("images/7.jpg")),
    ItemModle(
        name: "shadan", time: "3:00 pm ", image: AssetImage("images/1.webp")),
    ItemModle(
        name: "sadeen", time: "9:00 pm", image: AssetImage("images/2.webp")),
    ItemModle(
        name: "osama", time: "5:00 am", image: AssetImage("images/3.jpg")),
    ItemModle(
        name: "ahmad", time: "yesterday", image: AssetImage("images/4.jpg")),
    ItemModle(
        name: "mohammad",
        time: "07/03/2023 ",
        image: AssetImage("images/5.jpg")),
    ItemModle(
        name: "Rama", time: "07/03/2023 ", image: AssetImage("images/6.jpg")),
    ItemModle(
        name: "Yasmeen",
        time: "06/03/2023 ",
        image: AssetImage("images/9.webp")),
    ItemModle(
        name: "Marah", time: "04/03/2023 ", image: AssetImage("images/8.jpg")),
    ItemModle(
        name: "Enas", time: "01/03/2023 ", image: AssetImage("images/10.webp")),
    ItemModle(
        name: "Sara", time: "29/02/2023 ", image: AssetImage("images/3.jpg")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(251, 24, 175, 92),
          onPressed: () {},
          child: Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listItemModle.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: listItemModle[index].image,
                radius: 30,
              ),
              title: Text(
                listItemModle[index].name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "HI",
                  style: TextStyle(fontSize: 13),
                )
              ]),
              trailing: Text(listItemModle[index].time),
            );
          },
        ));
  }
}
