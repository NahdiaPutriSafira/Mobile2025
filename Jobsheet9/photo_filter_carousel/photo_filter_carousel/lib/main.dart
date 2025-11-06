import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/widget/filter_carousel.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  // Pastikan binding sudah diinisialisasi sebelum panggil plugin apa pun
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera yang tersedia di perangkat
  cameras = await availableCameras();

  // Jalankan aplikasi
  runApp(
    const MaterialApp(
      home: PhotoFilterCarousel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}