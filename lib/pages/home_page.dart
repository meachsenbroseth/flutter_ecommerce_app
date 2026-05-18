import 'package:ecommerce_app_ui/components/bottom_nav_bar.dart';
import 'package:ecommerce_app_ui/pages/cart_page.dart';
import 'package:ecommerce_app_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void navigatorBottomBar(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _page = [
    const ShopPage(),
    const CratPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder:(context)=> IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.menu)),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                      child: Image.asset('lib/images/nikePNG.png', color: Colors.white,)
                  ),

                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text("Home", style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text("About", style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text("Logout", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),

      ),
      bottomNavigationBar: MyBottomNavBar(onTabChange: (index)=> navigatorBottomBar(index)),
      body: _page[_selectIndex],
    );
  }
}

