import 'package:flutter/material.dart';

class MainJobPlatform extends StatefulWidget {
  const MainJobPlatform({Key? key}) : super(key: key);

  @override
  State<MainJobPlatform> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainJobPlatform>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  late AnimationController _controller2;

  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation2 = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller2,
      curve: Curves.easeInOut,
    ));

    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.1, 1.0, curve: Curves.easeInOut),
    ));

    _controller2.forward();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller2.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isHideCol2 = MediaQuery.of(context).size.width < 1000;
    bool isHideSideBar = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          isHideSideBar
              ? Container()
              : Container(
                  height: MediaQuery.of(context).size.height,
                  width: 80.0,
                  constraints: const BoxConstraints(
                    maxWidth: 80,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border(
                      right: BorderSide(
                        color: Colors.grey.withOpacity(0.6),
                        width: 0.4,
                      ),
                    ),
                  ),
                ),
          isHideCol2
              ? Container()
              : Flexible(
                  flex: 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey.withOpacity(0.6),
                          width: 0.8,
                        ),
                      ),
                    ),
                  ),
                ),
          Flexible(
            // fifth
            flex: 4,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.amber,
              child: Stack(
                children: [
                  Positioned(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        child: Column(
                          // you can use ListView here and remove SingleChildScrollView
                          children: [
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                            Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width,
                              height: 70.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.green,
                      height: 70.0,
                      child: Builder(builder: (context) {
                        return Center(
                          child: IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              //Scaffold.of(context).openDrawer();
                            },
                          ),
                        );
                      }),
                    ),
                  ),
                  isHideCol2
                      ? Container()
                      : Positioned(
                          top: 70.0,
                          bottom: 0.0,
                          right: 0.0,
                          child: Container(
                            color: Colors.purple,
                            width: 230.0,
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
