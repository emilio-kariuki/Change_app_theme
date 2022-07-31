import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themes/ItemController.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     itemController.changeTheme(!itemController.isDark.value);
      //     setState(() {
      //       itemController.isDark.value = !itemController.isDark.value;
      //     });
      //   },
      //   child: Obx(() {
      //     return Icon(
      //       itemController.isDark.value
      //           ? Icons.brightness_3
      //           : Icons.brightness_7,
      //     );
      //   }),
      // ),
      appBar: AppBar(
        title: const Text('GetX'),
        actions: [
          Switch(
              value: itemController.isDark.value,
              onChanged: (value) {
                itemController.changeTheme(value);
                setState(() {
                  itemController.isDark.value = value;
                });
              }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Obx(() {
            return Icon(
              itemController.isDark.value
                  ? Icons.brightness_3
                  : Icons.brightness_7,
            );
          }),
        ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return CircleAvatar(
                backgroundColor: itemController.isDark.value
                    ? Colors.grey[100]
                    : Colors.grey[900],
                radius: 70,
              );
            }),
            const SizedBox(height: 20),
            Obx(() {
              return Text(
                'Emilio Kariuki',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: itemController.isDark.value
                      ? Colors.grey[100]
                      : Colors.grey[900],
                ),
              );
            }),

          ],
        ),
      ),
    );
  }
}
