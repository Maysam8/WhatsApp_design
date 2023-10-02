import 'package:flutter/material.dart';
import 'package:whatsapp/ItemModel.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  List<ItemModle2> listItemModle = [
    ItemModle2(
        name: "maysam",
        time: "22 minutes ago ",
        image: AssetImage("images/7.jpg")),
    ItemModle2(
        name: "shadan",
        time: "30 minutes ago ",
        image: AssetImage("images/1.webp")),
    ItemModle2(
        name: "sadeen",
        time: "31 minutes ago",
        image: AssetImage("images/2.webp")),
    ItemModle2(
        name: "osama",
        time: "46 minutes ago",
        image: AssetImage("images/3.jpg")),
    ItemModle2(
        name: "ahmad", time: "yesterday", image: AssetImage("images/4.jpg")),
    ItemModle2(
        name: "mohammad", time: "yesterday", image: AssetImage("images/5.jpg")),
    ItemModle2(
        name: "Rama", time: "yesterday ", image: AssetImage("images/6.jpg")),
    ItemModle2(
        name: "Yasmeen",
        time: "yesterday ",
        image: AssetImage("images/9.webp")),
    ItemModle2(
        name: "Marah", time: "yesterday", image: AssetImage("images/8.jpg")),
    ItemModle2(
        name: "Enas", time: "yesterday ", image: AssetImage("images/10.webp")),
    ItemModle2(
        name: "Sara", time: "yesterday ", image: AssetImage("images/3.jpg")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 120, 141, 117),
                onPressed: () {},
                child: Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 236, 234, 234),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color.fromARGB(251, 24, 175, 92),
                child: Icon(
                  Icons.camera_alt,
                  color: Color.fromARGB(255, 236, 234, 234),
                ),
              ),
            )
          ],
        ),
        body: Column(children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/3.jpg"),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(251, 24, 175, 92),
                      radius: 11,
                      child: Icon(
                        Icons.add,
                        size: 11,
                        color: Color.fromARGB(255, 236, 234, 234),
                      ),
                    ))
              ],
            ),
            title: Text(
              "My status",
              style: TextStyle(
                  color: Color.fromARGB(228, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Tap to add status update"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: double.infinity,
              height: 20,
              child: Text(
                "Recent Updates",
                style: TextStyle(color: Color.fromARGB(255, 116, 104, 104)),
              )),
          SizedBox(
            height: 13,
          ),
          Expanded(
            child: ListView.builder(
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
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          listItemModle[index].time,
                          style: TextStyle(fontSize: 13),
                        )
                      ]));
                }),
          )
        ]));
  }
}
