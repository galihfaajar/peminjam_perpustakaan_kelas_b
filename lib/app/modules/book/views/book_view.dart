import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Buku'),
          centerTitle: true,
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => Get.toNamed(Routes.ADD_BOOK),
        //   child: Icon(Icons.add),
        // ),
        body: controller.obx((state) => ListView.separated(
              itemCount: state!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      Text("${state[index].judul}(${state[index].tahunTerbit})"),
                  subtitle:
                      Text("Penulis ${state[index].penulis}(${state[index].penerbit})"),
                  trailing: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.ADD_PEMINJAMAN, parameters: {
                          'id': (state[index].id ?? 0).toString(),
                          'judul': (state[index].judul ?? 0).toString()
                        });
                      },
                      child: Text("Pinjam")),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            )));
  }
}
