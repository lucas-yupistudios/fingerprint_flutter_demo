import 'package:flutter/material.dart';

import '../../utils/keyboard_util.dart';
import 'components/fingerprint_form.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
    controller.addListener(() => mounted ? setState(() {}) : null);
  }

  @override
  void dispose() {
    controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => KeyBoardUtil.hideKeyboard(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Fingerprint Capture'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/logo2.png',
                  width: 250,
                ),
                const SizedBox(height: 60),
                SizedBox(
                  height: controller.fingers.isEmpty ? 0 : 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.fingers.length,
                    itemBuilder: (context, index) {
                      final finger = controller.fingers[index];

                      return Container(
                        child: finger.isNotEmpty
                            ? Image.memory(
                                finger,
                                width: 400,
                              )
                            : null,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                FingerprintForm(controller: controller),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
