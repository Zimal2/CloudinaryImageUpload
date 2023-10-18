import 'package:flutter/material.dart';
import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:cloudinary_flutter/image/cld_image.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';

void main() {
  CloudinaryContext.cloudinary =
      Cloudinary.fromCloudName(cloudName: "dlrhjmnqn");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  final List<String> publicIds = [
    'cld-sample-5',
    'cld-sample',
    'cld-sample-4',
    'cld-sample-2'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView.builder(
          itemCount: publicIds.length,
          itemBuilder: (BuildContext context, int index) {
            return CldImageWidget(
              publicId: publicIds[index],
              // We can Add transformations here if necessary
              // for example:
    //           transformation: Transformation()
    //                ..resize(Resize.crop()
                  //   ..width(100)
                  //   ..height(150))
            );
          },
        ),
      ),
    );
  }
}
