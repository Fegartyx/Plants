import 'package:flutter/material.dart';

import 'model/herbal.dart';
import 'model/vegetables.dart';

class Detail extends StatefulWidget {
  Herbal? herbals;
  Vegetables? vegetables;
  Detail({this.herbals, this.vegetables});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    Widget vegetable(Vegetables vegetable) {
      return SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none, // agar tidak overlaps
          children: [
            Image.asset(
              widget.vegetables!.imageAsset,
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
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.vegetables!.name,
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.vegetables!.category,
                              style: TextStyle(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite == false
                                ? isFavorite = true
                                : isFavorite = false;
                          });
                        },
                        child: Icon(
                          isFavorite == true
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          size: 50,
                          color: isFavorite == true ? Colors.red : Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            widget.vegetables!.detail,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.vegetables!.imageUrl.map((e) {
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
                  ),
                ],
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
              widget.herbals!.imageAsset,
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
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.herbals!.name,
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.herbals!.category,
                              style: TextStyle(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite == false
                                ? isFavorite = true
                                : isFavorite = false;
                          });
                        },
                        child: Icon(
                          isFavorite == true
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          size: 50,
                          color: isFavorite == true ? Colors.red : Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            widget.herbals!.detail,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.herbals!.imageUrl.map((e) {
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
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: const Color(0xffF1F0F2),
        body: widget.herbals == null
            ? vegetable(widget.vegetables!)
            : herbal(widget.herbals!));
  }
}
