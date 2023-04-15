import 'package:flutter/material.dart';

class AppBarWaveWidget extends StatelessWidget {
  static const defaultGradient = LinearGradient(
    colors: [Color(0xFF584DD4), Color(0xFF8D80E4)],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  const AppBarWaveWidget({
    Key? key,
    required this.height,
    this.gradient = defaultGradient,
  }) : super(key: key);

  final double height;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipPath(
        clipper: AppBarWaveWidgetClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          decoration: BoxDecoration(gradient: gradient),
        ),
      ),
    );
  }
}

class AppBarWaveWidgetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    final p1Diff = ((140 - size.height) * 1.2).truncate().abs();
    path.lineTo(0.0, size.height - p1Diff);

    // rounded
    path.quadraticBezierTo(size.width * 0.01, size.height, 100, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(AppBarWaveWidgetClipper oldClipper) => oldClipper != this;
}
