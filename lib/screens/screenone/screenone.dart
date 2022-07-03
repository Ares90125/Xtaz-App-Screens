import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:photoediting/constants/colors.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool _lights = false;
  Color _currentColor = Colors.blue;
  RxInt selectedValue1 = 1.obs;
  RxInt selectedValue2 = 1.obs;
  final _controller = CircleColorPickerController(
    initialColor: Colors.blue,
  );

  double _currentFirstSliderValue = 20;
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
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: Get.width * 0.03),
                        Image.asset(
                          'assets/images.png',
                          fit: BoxFit.cover,
                          height: Get.height * 0.05,
                        ),
                        const Spacer(),
                        CupertinoSwitch(
                          value: _lights,
                          trackColor: Colors.black45,
                          activeColor: kblue,
                          onChanged: (bool value) {
                            setState(() {
                              _lights = value;
                            });
                          },
                        ),
                        SizedBox(width: Get.width * 0.03),
                      ],
                    ),
                    Center(
                      child: CircleColorPicker(
                        controller: _controller,
                        onChanged: (color) {
                          _currentColor = color;
                        },
                        strokeWidth: 15,
                        thumbSize: 36,
                        size: Size(Get.width * 0.7, Get.width * 0.7),
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        const Icon(
                          Icons.sunny,
                          color: Colors.white38,
                          size: 17,
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context)
                                .copyWith(trackHeight: 1),
                            child: Slider(
                              value: _currentFirstSliderValue,
                              max: 100,
                              divisions: 100,
                              activeColor: kblue,
                              thumbColor: kblue,
                              inactiveColor: kblue,
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
                          Icons.sunny,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Preset",
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.grey.shade500),
                          ),
                          customContainerWidget(
                            color: Colors.green,
                            check: true,
                            current: selectedValue2,
                            value: 1,
                          ),
                          customContainerWidget(
                            color: Colors.red,
                            check: false,
                            current: selectedValue2,
                            value: 2,
                          ),
                          customContainerWidget(
                            color: Colors.blue,
                            check: false,
                            current: selectedValue2,
                            value: 3,
                          ),
                          customContainerWidget(
                            color: Colors.yellow,
                            check: false,
                            current: selectedValue2,
                            value: 4,
                          ),
                          customContainerWidget(
                            color: kblue,
                            check: false,
                            current: selectedValue2,
                            value: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "classic",
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.grey.shade500),
                          ),
                          customContainerWidget(
                            color: Colors.green,
                            check: false,
                            current: selectedValue1,
                            value: 1,
                          ),
                          customContainerWidget(
                            color: Colors.red,
                            check: false,
                            current: selectedValue1,
                            value: 2,
                          ),
                          customContainerWidget(
                            color: Colors.blue,
                            check: false,
                            current: selectedValue1,
                            value: 3,
                          ),
                          customContainerWidget(
                            color: Colors.yellow,
                            check: false,
                            current: selectedValue1,
                            value: 4,
                          ),
                          customContainerWidget(
                            color: kblue,
                            check: false,
                            current: selectedValue1,
                            value: 5,
                          ),
                        ],
                      ),
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

class customContainerWidget extends StatelessWidget {
  customContainerWidget({
    Key? key,
    required this.color,
    required this.check,
    required this.current,
    required this.value,
  }) : super(key: key);

  Color color;
  bool check;
  RxInt current;
  int value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        current.value = value;
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color,
        ),
        child: Align(
            alignment: Alignment.bottomRight,
            child: Obx(() {
              return value == current.value
                  ? const Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.white,
                    )
                  : const SizedBox();
            })),
      ),
    );
  }
}
