import 'package:flutter_portfolio/model/certificate_model.dart';
import 'package:get/get.dart';

class ExperienceController extends GetxController {
  RxList<bool> hovers=[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;
  onHover(int index,bool value){
    hovers[index]=value;
  }
}