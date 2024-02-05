import 'package:drawer/widget/navigation.dart';
import 'package:flutter/material.dart';
import 'package:drawer/widget/drawer_item.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavigationDrawerWidget(),

      appBar: AppBar(

        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
            'Navigation Drawer',
          style: TextStyle(color:Colors.grey),

        ),

        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('drawer demo'),
      ),
    );
  }
}
