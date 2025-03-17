import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class QRPanel extends StatefulWidget {
  const QRPanel({super.key});

  @override
  QRPanelCamera createState() => QRPanelCamera();
}

class QRPanelCamera extends State<QRPanel> {
  CameraController? cameraController;
  bool isCameraInitialized = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    startCamera();
  }

  Future<void> startCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        setState(() {
          errorMessage = "No available cameras";
        });
        return;
      }

      cameraController = CameraController(
        cameras.first,
        ResolutionPreset.high,
        enableAudio: false,
      );

      await cameraController!.initialize();
      if (mounted) {
        setState(() {
          isCameraInitialized = true;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = "Failed to initialize camera: $e";
      });
    }
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    if (errorMessage != null) {
      return Center(
        child: Text(errorMessage!, style: const TextStyle(color: Colors.red)),
      );
    }

    if (!isCameraInitialized || cameraController == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.black,
        child: CameraPreview(
          cameraController!,
          child: Center(
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
