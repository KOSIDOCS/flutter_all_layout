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

    if (isHideCol2) {
      _controller.reverse();
    } else {
      _controller.forward();
    }

    if (isHideSideBar) {
      _controller2.reverse();
    } else {
      _controller2.forward();
    }

    return Scaffold(
      drawer: isHideSideBar
          ? Drawer(
              backgroundColor: Colors.green,
              child: ListView(
                children: const [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Drawer Header'),
                  ),
                ],
              ),
            )
          : null,
      body: Flex(
        direction: Axis.horizontal,
        children: [
          AnimatedBuilder(
              animation: _controller2,
              builder: (context, child) {
                return Container(
                  // second
                  height: MediaQuery.of(context).size.height,
                  width: _animation2.value *
                      MediaQuery.of(context).size.width *
                      0.1,
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
                );
              }),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width:
                    _animation.value * MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border(
                    right: BorderSide(
                      color: Colors.grey.withOpacity(0.6),
                      width: 0.8,
                    ),
                  ),
                ),
              );
            },
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
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        );
                      }),
                    ),
                  ),
                  AnimatedBuilder(
                    // with animation
                    animation: _controller,
                    builder: (context, child) {
                      return Positioned(
                        top: 70.0,
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: _animation.value *
                              MediaQuery.of(context).size.width *
                              0.2,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey.withOpacity(0.6),
                                width: 0.8,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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
