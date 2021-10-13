import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class DNavigationService {
  Future<dynamic> goToNamed(
      {@required String name, var data, var mixpanelEventData});


  Future<void> until ({String name});

  Future<dynamic> offAndToNamed(
      {String name, dynamic data, var mixpanelEventData});

  Future<dynamic> offUntil({String name, dynamic data, var mixpanelEventData});

  Future<dynamic> offAndToWidget(
      {var widget, dynamic data, var mixpanelEventData});

  Future<dynamic> offAllNamedUntil(
      {String name, String until, dynamic data, var mixpanelEventData});

  Future<dynamic> openBottomSheet(
      {var child, var data, bool isScrollContinued, var mixpanelEventData});

  Future<dynamic> openCustomBottomSheet(
      {var child, var data, bool isScrollContinued, var mixpanelEventData});

  Future<dynamic> back();
}

class DNavigationServiceFake extends DNavigationService {
  @override
  Future back() {}

  @override
  Future goToNamed(
      {String name, data, String mixpanelEventName, mixpanelEventData}) {}

  @override
  Future offAndToNamed(
      {String name, data, String mixpanelEventName, mixpanelEventData}) {}

  @override
  Future openBottomSheet(
      {child, var data, bool isScrollContinued, mixpanelEventData}) {}

  @override
  Future offAllNamedUntil(
      {String name, String until, data, mixpanelEventData}) {}

  @override
  Future offAndToWidget({widget, data, mixpanelEventData}) {}

  @override
  Future offUntil({String name, data, mixpanelEventData}) {}

  @override
  Future openCustomBottomSheet(
      {child, data, bool isScrollContinued, mixpanelEventData}) {}

  @override
  Future<void> until({String name}) {

  }
}

