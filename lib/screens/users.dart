import 'package:flutter/material.dart';
import 'package:language_tandem/components/UserProfileCard1.dart';
import 'dart:developer' as developer;

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final TextEditingController _searchController = TextEditingController();
   List<String> userNames = ['Jane Doe', 'John Doe','Jack Doe','Jill Doe'];
   List<String> filtered = [];
  final imgUrl = 'https://png.pngtree.com/png-vector/20190702/ourlarge/pngtree-female-user-avatars-flat-style-women-profession-vector-png-image_1529171.jpg';

  void _onSearch(){
    List<String> newList = []
    for (int i = 0; i <userNames.length; i++)
      {
        if (userNames[i].toLowerCase().contains(_searchController.text.toLowerCase())){
          newList.add(userNames[i]);
        }
      }
    developer.log(newList.toString());
    setState(() {
      filtered = newList;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8,0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextField(
            controller: _searchController,
            onChanged: _onSearch(),
            decoration: const InputDecoration(
              labelText: "Search by language or username",
            ),
          ),
          SizedBox(
            height: 700,
            child: _searchController.text == "" ? ListView.builder(
              itemCount: _searchController.text == "" ? userNames.length: filtered.length,
              itemBuilder: (BuildContext context, int index) {
                return UserProfileCard1(name: _searchController.text == " " ? userNames[index]:filtered[index], imgUrl:imgUrl,languages:'English');
              }),
          )
        ],
      ),
    );
  }
}
