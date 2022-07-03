import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:photoediting/constants/colors.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  double _currentFirstSliderValue = 20;
  double _currentSecondSliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/building.jpg',
            ),
            fit: BoxFit.cover,
          )),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              GlassContainer(
                height: Get.height,
                width: Get.width,
                blur: 4,
                color: Colors.white.withOpacity(0.1),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.blue.withOpacity(0.3),
                  ],
                ),
                //--code to remove border
                border: const Border.fromBorderSide(BorderSide.none),
                shadowStrength: 10,
                borderRadius: BorderRadius.circular(16),
                shadowColor:
                    const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    SizedBox(
                      height: Get.height * .55,
                      width: Get.width,
                      child: ListWheelScrollView(
                          itemExtent: 50,
                          useMagnifier: true,
                          magnification: 1.3,
                          overAndUnderCenterOpacity: .5,
                          children: const [
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'hello',
                              style: TextStyle(
                                color: kblue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: Get.width * 0.1),
                        const Text(
                          'Speed:',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '${_currentFirstSliderValue.toInt()}',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context)
                                .copyWith(trackHeight: 1),
                            child: Slider(
                              value: _currentFirstSliderValue,
                              thumbColor: kblue,
                              inactiveColor: kblue,
                              activeColor: kblue,
                              max: 100,
                              divisions: 100,
                              label:
                                  _currentFirstSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentFirstSliderValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: Get.width * 0.1),
                        const Text(
                          'Brightness:',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '${_currentSecondSliderValue.toInt()}',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context)
                                .copyWith(trackHeight: 1),
                            child: Slider(
                              value: _currentSecondSliderValue,
                              thumbColor: kblue,
                              inactiveColor: kblue,
                              activeColor: kblue,
                              max: 100,
                              divisions: 100,
                              label:
                                  _currentSecondSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSecondSliderValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
