import 'package:flutter/material.dart';
import 'package:stable_horde_flutter/modex_box/model_box_app_submit_widget.dart';
import 'package:stable_horde_flutter/modex_box/model_box_consts.dart';
import 'package:stable_horde_flutter/modex_box/model_box_side_menu.dart';

class ModelBoxHome extends StatefulWidget {
  const ModelBoxHome({super.key});

  @override
  State<ModelBoxHome> createState() => _ModelBoxHomeState();
}

class _ModelBoxHomeState extends State<ModelBoxHome> {
  int currentPageIndex = 0;
  List<Widget> pages = [
    ModelBoxSubmitWidget(),
    Container(
      color: Colors.green
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blueGrey
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.width / 5),
        child: AppBar(
          title: const Text(
            'MODELBOX',
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            letterSpacing: 10,
            fontSize: 18,
          ),
          actions: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 10
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: Colors.white
                    ),
                    color: Colors.black,
                  ),
                  child: Text("LOG IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: PRIMARY_BACKGROUND_COLOR,
          width: 360,
          child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              "MODELBOX",
              style: SIDE_MENU_FONT_STYLE,
            ),
          ),
          ModelBoxSideMenu(
            startingSelected: currentPageIndex,
            onPressed: (int index){
              setState(() {
                currentPageIndex = index;
                Navigator.pop(context);
              });
            },
          )
        ],
      )),
      backgroundColor: Colors.black,
      body: pages[currentPageIndex],
    );
  }
}
