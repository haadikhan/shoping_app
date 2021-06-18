import 'package:flutter/material.dart';
import 'package:shoping_app/domain/item_model.dart';

class Furniture extends StatefulWidget {
  @override
  _FurnitureState createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 5, vsync: this);
  Item item = Item(name: "Dining Room Chair", rating: 4.9, price: 120);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            _menu(),
            _categouryName(),
            _searchBar(),
            _categouryTabBar(),
          ],
        ),
      ),
    );
  }

  Widget _menu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.dashboard),
        Icon(Icons.message),
      ],
    );
  }

  Widget _categouryName() {
    return ListTile(
      title: Text(
        "Perfect Furniture",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      subtitle: Text(
        "for your house",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _searchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search for furniture",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
        icon: Icon(
          Icons.search,
          size: 35,
        ),
      ),
    );
  }

  Widget _categouryTabBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TabBar(
        labelStyle: TextStyle(color: Colors.white30),
        labelColor: Colors.lightGreen,
        controller: tabController,
        unselectedLabelColor: Colors.black,
        tabs: [
          Tab(
            text: "Chair ",
            icon: Icon(Icons.chair),
          ),
          Tab(
            text: "Table",
            icon: Icon(Icons.card_giftcard),
          ),
          Tab(
            text: "Lamp",
            icon: Icon(Icons.message),
          ),
          Tab(
            text: "Floor",
            icon: Icon(Icons.people),
          ),
          Tab(
            text: "Sofa",
            icon: Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
