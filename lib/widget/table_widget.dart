


import 'package:dangnhapdoimautwo/model/students.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sinhvienDat= Provider.of<Students>(context);
    return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.green,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              tabs: <Widget>[
                Text('Tất cả'),
                Text('Người bạn có thể biết'),

              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Center(
                  child: ListView.builder(
                      itemCount: sinhvienDat.items.length,
                      itemBuilder: (context,i) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(sinhvienDat.items[i].name),
                                Text(sinhvienDat.items[i].phone.toString()),

                              ]),
                          subtitle: Text(sinhvienDat.items[i].address),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(sinhvienDat.items[i].imageUrl),
                          ),

                        );
                      }

                  ),
                ),
                Center(
                  child: ListView(
                     children:  [
                       ListTile(
                          title: Text("Hồng ngọc"),
                          subtitle: Text("Quảng ninh-0978545373"),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1517059224940-d4af9eec41b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                          ),
                        )
                     ]
                  ),
                ),

              ],
            ),
          ),
        ],

    );
  }
}

