
import 'package:dangnhapdoimautwo/widget/gridview_widget.dart';
import 'package:dangnhapdoimautwo/widget/listview_widget.dart';
import 'package:dangnhapdoimautwo/widget/newfeed.dart';
import 'package:dangnhapdoimautwo/widget/table_widget.dart';
import 'package:dangnhapdoimautwo/widget/user_widget.dart';
import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  static const routeName ='/second';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedIndex = 0;
  Widget _myContacts = MyContacts();
  Widget _myEmails = MyEmails();
  Widget _myProfile = MyProfile();
  Widget _myTable = MyTabBar();
  Widget _myNewfeed = MyNewfeed();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  // final SnackBar _snackBar = SnackBar(
  //   content: const Text('Đã trang hai'),
  //   duration: const Duration(seconds: 5),
  // );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(" lap trinh flutter"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Do Anh Vu"),
                accountEmail: Text("vudoanh0712@gmail.com"),

              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Vu do"),
              ),
            ),

            Divider(height: 0.1,),
            ListTile(
              title: new Text("Inbox"),
              leading: new Icon(Icons.mail),
            ),
            Divider(height: 0.1,),
            ListTile(
              title: new Text("Sent"),
              leading: new Icon(Icons.inbox),
            ),
            Divider(height: 0.1,),
            ListTile(
              title: new Text("Logout"),
              leading: new Icon(Icons.logout),
            ),
            Divider(height: 0.1,),
            ListTile(
              title: new Text("About"),
              leading: new Icon(Icons.people_alt_outlined),
            ),
            Divider(height: 0.1,)
          ],
        ),
      ),
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        //shape:CircularNotchedRectangle(),
        //color: Colors.yellowAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("List"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("Gridview"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_outlined),
            title: Text("Friend"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_label),
            title: Text("New feed"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
          ),

        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },

        // child: Container(
        //   height: 50,
        // ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context).showSnackBar(_snackBar);
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.red,
      //
      // ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  Widget getBody( )  {
    if(this.selectedIndex == 0) {
      return this._myContacts;
    } else if(this.selectedIndex==1) {
      return this._myEmails;
    }else if(this.selectedIndex ==2){
      return this._myTable;
    }else if(this.selectedIndex ==3){
      return this._myNewfeed;
    }
    else {
      return this._myProfile;
    }
  }
  void onTapHandler(int index)  {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}


