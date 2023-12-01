import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:snap_chat_clone/Resources/resources.dart';
import 'Components/camera_ui_design.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
        const CameraDescription(
            name: "0",
            lensDirection: CameraLensDirection.back,
            sensorOrientation: 1),
        ResolutionPreset.veryHigh);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizeHeight = MediaQuery.sizeOf(context).height;
    var sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ResourcesData.colors.black,
      body: FutureBuilder(
          future: _initializeControllerFuture,
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Expanded(child: CameraPreview(_controller)),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          }),
      floatingActionButton: getFooter(sizeHeight, sizeWidth),
    );
  }
}
