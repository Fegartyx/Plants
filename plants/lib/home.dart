import 'package:flutter/material.dart';

import 'detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget gridItemCard() {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Detail();
          }));
        },
        child: Card(
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          //elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/vegetables/carrot.jpg',
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Carrot',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'The carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot, native to Europe and Southwestern Asia.',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget listItemCard() {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Detail();
          }));
        },
        child: Card(
          margin: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
              ),
              const Expanded(
                flex: 2,
                child: Text('Lavender'),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  'assets/herbal/lavender.jpg',
                ),
              )
            ],
          ),
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        title: Text(
          'Plants',
          style: TextStyle(color: Colors.lightGreen),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          indicatorColor: Colors.lightGreen,
          labelColor: Colors.lightGreen,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Vegetables',
            ),
            Tab(
              text: 'Herbal',
            )
          ],
        ),
      );
    }

    Widget tabItem() {
      return Material(
        color: Colors.white30,
        child: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 2,
              children: [gridItemCard(), gridItemCard()],
            ),
            ListView(
              children: [listItemCard()],
            ),
          ],
        ),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffF1F0F2),
        appBar: header(),
        body: tabItem(),
      ),
    );
  }
}
