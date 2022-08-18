import 'package:flutter/material.dart';
import 'package:plants/model/herbal.dart';
import 'package:plants/model/vegetables.dart';

import 'detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget gridItemCard(Vegetables vegetables) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Detail(
              vegetables: vegetables,
            );
          }));
        },
        child: Card(
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          //elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    vegetables.imageAsset,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  vegetables.name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  vegetables.detail,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget listItemCard(Herbal herbals) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Detail(
              herbals: herbals,
            );
          }));
        },
        child: Card(
          margin: EdgeInsets.symmetric(
            vertical: 10,
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
              Expanded(
                flex: 2,
                child: Text(herbals.name),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  herbals.imageAsset,
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
              children: List.generate(vegetableLists.length, (index) {
                final Vegetables vegetables = vegetableLists[index];
                return gridItemCard(vegetables);
              }),
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                final Herbal herbals = listHerbal[index];
                return listItemCard(herbals);
              },
              itemCount: listHerbal.length,
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
