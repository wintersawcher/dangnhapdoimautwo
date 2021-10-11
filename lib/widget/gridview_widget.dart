
import 'package:dangnhapdoimautwo/model/students.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dulieu = Provider.of<Students>(context);
    return Column(

      children: [
        Flexible(child:  GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:3/2,
                crossAxisSpacing:10,
                mainAxisSpacing:10

            ),
            itemCount: dulieu.items.length,
            itemBuilder: (context,i){
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GridTile(
                  child: Image.network(
                    dulieu.items[i].imageUrl,
                    fit: BoxFit.cover,
                  ),

                ),
              );

            }

        ),),

          ],
    );

  }
}