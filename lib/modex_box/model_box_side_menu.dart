import 'package:flutter/material.dart';
import 'model_box_consts.dart';

class ModelBoxSideMenu extends StatefulWidget {
  const ModelBoxSideMenu({super.key, required this.onPressed, required this.startingSelected});

  final int startingSelected;
  final void Function(int index) onPressed;

  @override
  State<ModelBoxSideMenu> createState() => _ModelBoxSideMenuState();
}

class _ModelBoxSideMenuState extends State<ModelBoxSideMenu> {
  int currentlySelected = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentlySelected = widget.startingSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: SIDE_MENU_VERTICAL_PADDING,
            ),
            child: TextButton(
              onPressed: () {
                currentlySelected = 0;
                widget.onPressed(0);
              },
              child: Text(
                "HOME",
                style: SIDE_MENU_FONT_STYLE_BUILDER(currentlySelected == 0
                    ? SIDE_MENU_HOME_SELECTED_COLOR
                    : PRIMARY_TEXT_COLOR),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: SIDE_MENU_VERTICAL_PADDING,
            ),
            child: TextButton(
              onPressed: () {
                currentlySelected = 1;
                widget.onPressed(1);
              },
              child: Text(
                "TOOLS",
                style: SIDE_MENU_FONT_STYLE_BUILDER(currentlySelected == 1
                    ? SIDE_MENU_TOOL_SELECTED_COLOR
                    : PRIMARY_TEXT_COLOR),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: SIDE_MENU_VERTICAL_PADDING,
            ),
            child: TextButton(
              onPressed: () {
                currentlySelected = 2;
                widget.onPressed(2);
              },
              child: Text(
                "MARKET",
                style: SIDE_MENU_FONT_STYLE_BUILDER(currentlySelected == 2
                    ? SIDE_MENU_MARKET_SELECTED_COLOR
                    : PRIMARY_TEXT_COLOR),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: SIDE_MENU_VERTICAL_PADDING,
            ),
            child: TextButton(
              onPressed: () {
                currentlySelected = 3;
                widget.onPressed(3);
              },
              child: Text(
                "ACCOUNT",
                style: SIDE_MENU_FONT_STYLE_BUILDER(currentlySelected == 3
                    ? SIDE_MENU_ACCOUNT_SELECTED_COLOR
                    : PRIMARY_TEXT_COLOR),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
