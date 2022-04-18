import 'package:flutter/cupertino.dart';
import 'package:language_tandem/components/UserProfileCard1.dart';
import 'package:language_tandem/components/bottomNavigationBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    UserScreen(),
    Text('Chats'),
    Text('Progress')
  ];
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    })
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [_pages[_selectedIndex]],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_rounded), label: "Users"),
            BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.analytics_rounded), label:"Progress")
          ],
          currentIndex: selectedIndex,
          onTap:_onItemTapped,
      ),
    );
  }
}
