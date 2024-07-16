import 'package:rive/rive.dart';

class RiveModel{
  final String src, artboard, statteMachineName;
  late SMIBool? status;

  RiveModel({
    required this.src,
    required this.artboard,
    required this.statteMachineName,
    this.status,
  });


  set setSatus(SMIBool state){
    status = state;
  }
}