import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../Widgets/allitemswidget.dart';
import '../Widgets/homebottomnavbar.dart';
import '../Widgets/rowitems_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1),
                        ]),
                    child: Icon(
                      Icons.sort,
                      size: 30,
                      color: Color(0xFF475269),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1),
                        ]),
                    child: const Badge(
                      badgeContent: Text(
                        "3",
                        style: TextStyle(
                          color: Color(0xFFF5F9FD)
                        ),
                      ),
                      child: Icon(Icons.notifications,size: 30,
                      color: Color(0xFF475269)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]
              ),

              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 20,
                    color: Color(0xFF475269),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            RowItemsWidget(),
            SizedBox(height: 30),
            AllItemsWidget(),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
