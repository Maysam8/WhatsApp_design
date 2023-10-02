import 'package:flutter/material.dart';
import 'package:whatsapp/ItemModel.dart';

class screen4 extends StatefulWidget {
  const screen4({super.key});

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  List<ItemModle3> ListItemModle = [
    ItemModle3(name: "Laila", day: "yesterday, 1:34 pm"),
    ItemModle3(name: "shadan", day: "yesterday ,3.00 "),
    ItemModle3(name: "rama uni", day: "yesterday ,9:27 am "),
    ItemModle3(name: "sara", day: "(2)7 march ,9:00 pm"),
    ItemModle3(name: "shadan", day: "28 February,9:24 am"),
    ItemModle3(name: "ranya", day: "17 febrauary,10:57 "),
    ItemModle3(name: "Rama", day: "12 january,4:38 am  "),
    ItemModle3(name: "Dad", day: "(2)2 January,2:12 pm"),
    ItemModle3(name: "Tabarak", day: "06/12/2022, 12:08 "),
    ItemModle3(name: "Shadan", day: "15/11/2022,12:05 "),
    ItemModle3(name: "Rama ", day: "31/10/2022,3:35 "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add_call,
            color: Color.fromARGB(255, 250, 249, 249),
          ),
          backgroundColor: Color.fromARGB(251, 24, 175, 92),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ListItemModle.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
              ),
              title: Text(
                ListItemModle[index].name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(children: [
                Icon(
                  Icons.call_received,
                  size: 15,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  ListItemModle[index].day,
                  style: TextStyle(fontSize: 13),
                )
              ]),
              trailing: Icon(Icons.call,
                  size: 18, color: Color.fromARGB(251, 24, 175, 92)),
            );
          },
        ));
  }
}
