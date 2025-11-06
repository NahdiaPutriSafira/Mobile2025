// File: photo_filter_carousel.dart

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:photo_filter_carousel/widget/filter_selector.dart';

// Asumsi: 'cameras' adalah variabel global yang berisi daftar CameraDescription
// yang diinisialisasi di main.dart.
import '../main.dart'; // Import main.dart untuk mengakses 'cameras' (metode yang kurang bersih tapi berfungsi)


@immutable
class PhotoFilterCarousel extends StatefulWidget {
  const PhotoFilterCarousel({super.key});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  // --- 1. VARIABEL KAMERA BARU ---
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Inisialisasi controller kamera
    _cameraController = CameraController(
      // Pilih kamera pertama dari daftar (biasanya kamera belakang)
      cameras.first, 
      ResolutionPreset.high, // Resolusi tinggi
    );

    // Simpan Future untuk inisialisasi controller
    _initializeControllerFuture = _cameraController.initialize();
  }

  @override
  void dispose() {
    // Buang controller saat widget dibuang untuk menghindari kebocoran memori
    _cameraController.dispose();
    super.dispose();
  }

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildPhotoWithFilter(), // Sekarang akan menampilkan preview kamera
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  // --- 2. GANTI _buildPhotoWithFilter DENGAN CAMERA PREVIEW ---
  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // Jika kamera sudah siap (done), tampilkan preview
              
              // Hitung rasio aspek untuk memastikan preview tidak terdistorsi
              final size = MediaQuery.of(context).size;
              final scale = size.aspectRatio * _cameraController.value.aspectRatio;

              return Stack(
                children: [
                  // Gunakan Transform.scale untuk mengisi layar tanpa distorsi
                  Transform.scale(
                    scale: scale,
                    alignment: Alignment.topCenter,
                    child: CameraPreview(_cameraController),
                  ),
                  
                  // Layer Filter (Overlay) di atas preview
                  Positioned.fill(
                    child: Container(
                      foregroundDecoration: BoxDecoration(
                        color: color.withOpacity(0.5),
                        backgroundBlendMode: BlendMode.multiply,
                      ),
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              // Jika terjadi error saat inisialisasi
              return Center(
                child: Text('Error: ${snapshot.error}', style: const TextStyle(color: Colors.white)),
              );
            } else {
              // Tampilkan loading spinner saat inisialisasi berlangsung
              return const Center(child: CircularProgressIndicator(color: Colors.white));
            }
          },
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}