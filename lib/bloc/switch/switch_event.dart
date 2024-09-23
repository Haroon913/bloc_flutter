import 'package:flutter/material.dart';

abstract class SwitchEvent{
  SwitchEvent();
  @override
  List<Object> get  props=>[];

}
class EnableorDisableNotification extends SwitchEvent{}

class SliderEvents extends SwitchEvent{
  double slider;
  SliderEvents({required this.slider});
  @override
  List<Object> get props=>[slider];
}