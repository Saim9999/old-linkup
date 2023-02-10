



import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController{
Rx<TextEditingController> eventscontroller = TextEditingController().obs;

RxString? category=''.obs;
RxString? title=''.obs;
RxString? description=''.obs;
RxString? start_date=''.obs;
RxString? end_date=''.obs;
RxString? location=''.obs;



}