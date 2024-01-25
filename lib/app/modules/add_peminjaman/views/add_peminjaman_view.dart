import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_b/app/modules/add_peminjaman/controllers/add_peminjaman_controller.dart';


class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pinjam ${Get.parameters['judul'].toString()}"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.tanggalPinjamController,
                decoration: InputDecoration(hintText: "Masukkan Tanggal Pinjam"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tanggal Pinjam tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.tanggalKembaliController,
                decoration: InputDecoration(hintText: "Masukkan Tanggal Kembali"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Tanggal kembali tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => controller.loading.value?
              CircularProgressIndicator():
              ElevatedButton(onPressed: (){
                controller.addPeminjaman();
              }, child: Text("Pinjam"))),
            ],
          ),
        ),
      ),
    );
  }
}
