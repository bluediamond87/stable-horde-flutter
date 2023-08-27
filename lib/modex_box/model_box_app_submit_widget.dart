import 'package:flutter/material.dart';
import 'package:stable_horde_flutter/modex_box/model_box_consts.dart';

class ModelBoxSubmitWidget extends StatefulWidget {
  const ModelBoxSubmitWidget({super.key});

  @override
  State<ModelBoxSubmitWidget> createState() => _ModelBoxSubmitWidgetState();
}

class _ModelBoxSubmitWidgetState extends State<ModelBoxSubmitWidget> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 2,
        vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SubmitPageBuilder(context);
  }

  Container SubmitPageBuilder(BuildContext context) {
    const TEXT_STYLE = TextStyle(color: Colors.white, letterSpacing: 1.2, fontSize: 13);
    var STANDARD_PADDING = EdgeInsets.all(14);
    const SCREEN_DIV = 5;
    var GRID_SIZE = MediaQuery.of(context).size.width / SCREEN_DIV;
    var STANDARD_BOX_DECORATION = BoxDecoration(
        border: Border.all(
            color: PRIMARY_BORDER_COLOR,
            width: 1
        )
    );
    var GRID_WIDGET = Container(
      height: GRID_SIZE,
      width: GRID_SIZE,
      decoration: STANDARD_BOX_DECORATION,
    );
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: GRID_SIZE * 2,
                          height: GRID_SIZE,
                          alignment: Alignment.centerLeft,
                          decoration: STANDARD_BOX_DECORATION,
                          padding: STANDARD_PADDING,
                          child: const Text(
                            "ENTER PROMPT",
                            style: TEXT_STYLE,
                          ),
                        ),
                        GRID_WIDGET,
                        GRID_WIDGET,
                        GRID_WIDGET
                      ],
                    ),
                    Container(
                      color: PRIMARY_BORDER_COLOR,
                      width: GRID_SIZE * 5,
                      height: GRID_SIZE * 2 ,
                      child: TextField(
                        style: TEXT_STYLE,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: PRIMARY_BORDER_COLOR,
                            hintText: "What do you want to create?",
                            hintStyle: TextStyle(
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: STANDARD_PADDING,
                          width: GRID_SIZE * 2,
                          height: GRID_SIZE,
                          decoration: STANDARD_BOX_DECORATION,
                          child: Text( "CHOOSE YOUR MODEL AND STYLE",
                            style: TEXT_STYLE,
                          ),
                        ),
                        GRID_WIDGET,
                        GRID_WIDGET,
                        GRID_WIDGET
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          color: PRIMARY_BORDER_COLOR,
                          width: GRID_SIZE * 2,
                          height: GRID_SIZE,
                          child: Stack(
                            children: [
                              Padding(
                                padding: STANDARD_PADDING,
                                child: Text(
                                  "Model\n\nV3",
                                  style: TEXT_STYLE,
                                ),
                              )
                            ],
                          ),
                        ),
                        GRID_WIDGET,
                        Container(
                          width: GRID_SIZE * 2,
                          height: GRID_SIZE,
                          padding: STANDARD_PADDING,
                          color: PRIMARY_BORDER_COLOR,
                          child: Text( "Style\n\nKINGDOM",
                            style: TEXT_STYLE,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: STANDARD_PADDING,
                          width: GRID_SIZE * 2,
                          height: GRID_SIZE,
                          decoration: STANDARD_BOX_DECORATION,
                          child: Stack(
                            children: [
                              Text("ADVANCED\nSETTINGS",
                                style: TEXT_STYLE,
                              ),
                            ],
                          ),
                        ),
                        GRID_WIDGET,
                        GRID_WIDGET,
                        GRID_WIDGET
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: STANDARD_PADDING,
                      height: GRID_SIZE,
                      color: PRIMARY_BORDER_COLOR,
                      child: Row(
                        children: [],
                      ),
                    ),
                    Row(
                      children: [
                        GRID_WIDGET,
                        Container(
                          decoration: STANDARD_BOX_DECORATION,
                          width: GRID_SIZE * 3,
                          height: GRID_SIZE,
                          padding: EdgeInsets.all(21),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: SIDE_MENU_PURPLE_COLOR,
                                    width: 1
                                )
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: SIDE_MENU_PURPLE_COLOR,
                                  textStyle: TextStyle(
                                    color: SIDE_MENU_PURPLE_COLOR,
                                  )
                              ),
                              onPressed: (){},
                              child: Text("GENERATE IMAGE"),
                            ),
                          ),
                        ),
                        GRID_WIDGET
                      ],
                    )
                  ],
                ),
              ],
            ),
            Flexible(
              child: TabBar(
                labelColor: Colors.white,
                controller: tabController,
                tabs: [
                  Tab(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home, size: 34),
                        Text("Home",
                          textScaleFactor: .75,
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.settings, size: 34),
                        Text("Tools",
                          textScaleFactor: .75,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
