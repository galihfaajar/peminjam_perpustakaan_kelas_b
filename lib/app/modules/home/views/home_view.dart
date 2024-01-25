import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20,horizontal: 35))
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.BOOK);
                    },
                    child: Text("List Buku")),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20,horizontal: 10))
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.PEMINJAMAN);
                    },
                    child: Text("List Peminjaman"))
              ],
            ),
          ),
        ));
  }
}
