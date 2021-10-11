
import 'package:dangnhapdoimautwo/model/students.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:core';
class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sinhvienData= Provider.of<Students>(context);
    return Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
             itemCount: sinhvienData.items.length,
             itemBuilder: (context,i) {
                    return ListTile(
                      title: Text(sinhvienData.items[i].name),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(sinhvienData.items[i].imageUrl),
                      ),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {},
                              color: Theme.of(context).primaryColor,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {},
                              color: Theme.of(context).errorColor,
                            )
                          ],
                        ),
                      ),
                    );
             }

        ),
      );

  }
}