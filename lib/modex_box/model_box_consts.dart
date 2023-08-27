import 'package:flutter/material.dart';

const Color PRIMARY_TEXT_COLOR = Colors.white;
const Color PRIMARY_BORDER_COLOR = Color(0xFF242424);
const Color PRIMARY_BACKGROUND_COLOR = Colors.black; // Color(0xFF23374e);
const Color SIDE_MENU_HOME_SELECTED_COLOR = Color(0xFF006025);
const Color SIDE_MENU_TOOL_SELECTED_COLOR = Color(0xFF620f13);
const Color SIDE_MENU_MARKET_SELECTED_COLOR = Color(0xFF5c581c);
const Color SIDE_MENU_ACCOUNT_SELECTED_COLOR = Color(0xFF23374e);
const Color SIDE_MENU_PURPLE_COLOR = Color(0xFFb27dbe);
const TextStyle SIDE_MENU_FONT_STYLE = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 38,
  letterSpacing: 15,
);
TextStyle SIDE_MENU_FONT_STYLE_BUILDER(Color color){
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
    fontSize: 42,
    letterSpacing: 15,
  );
}
const double SIDE_MENU_VERTICAL_PADDING = 6;
