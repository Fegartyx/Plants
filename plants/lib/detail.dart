import 'package:flutter/material.dart';

import 'model/herbal.dart';
import 'model/vegetables.dart';

class Detail extends StatelessWidget {
  Herbal? herbals;
  Vegetables? vegetables;
  Detail({this.herbals, this.vegetables});

  @override
  Widget build(BuildContext context) {
    Widget vegetable(Vegetables vegetable) {
      return SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none, // agar tidak overlaps
          children: [
            Image.asset(
              vegetables!.imageAsset,
              width: double.infinity,
              height: 450,
              fit: BoxFit.fill,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 45,
                      color: Color(0xff1F1D2B),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    vegetables!.name,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    vegetables!.category,
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Card(
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        vegetables!.detail,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: vegetables!.imageUrl.map((e) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        e,
                        height: MediaQuery.of(context).size.height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      );
    }

    Widget herbal(Herbal herbal) {
      return SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none, // agar tidak overlaps
          children: [
            Image.asset(
              herbals!.imageAsset,
              width: double.infinity,
              height: 450,
              fit: BoxFit.fill,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 45,
                      color: Color(0xff1F1D2B),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    herbals!.name,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    herbals!.category,
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Card(
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        herbals!.detail,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: herbals!.imageUrl.map((e) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        e,
                        height: MediaQuery.of(context).size.height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: const Color(0xffF1F0F2),
        body: herbals == null ? vegetable(vegetables!) : herbal(herbals!));
  }
}
