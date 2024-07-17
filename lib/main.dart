import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Responsive App'),
            ),
            body: Center(
              child: Text(
                'Pantalla: ${sizingInformation.deviceScreenType}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyResponsiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690), minTextAdapt: true, splitScreenMode: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App with ScreenUtil'),
      ),
      body: Center(
        child: Container(
          width: 0.5.sw,  // 50% del ancho de la pantalla
          height: 200.h,  // Altura de 200 unidades en función del diseño
          color: Colors.blue,
          child: Center(
            child: Text(
              'Ancho: ${0.5.sw}\nAltura: 200.h',
              style: TextStyle(fontSize: 20.sp), // Tamaño del texto adaptable
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
