import 'package:flutter/material.dart';
import 'package:toplearth/view/root/widget/custom_model_viewer.dart';

class EarthGLBScene extends StatefulWidget {
  const EarthGLBScene({
    super.key,
  });

  @override
  _EarthGLBSceneState createState() => _EarthGLBSceneState();
}

class _EarthGLBSceneState extends State<EarthGLBScene> {
  @override
  Widget build(BuildContext context) {
    return const CustomModelViewer(
      debugLogging: false,
      src: 'assets/gltf/earth.glb', // GLB 파일의 경로를 지정하세요
      alt: "A 3D model of the Earth",
      cameraControls: false,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      disablePan: true,
      disableTap: true,
      disableZoom: true,
      isScrollable: false,
      autoRotate: true,
    );
  }
}
