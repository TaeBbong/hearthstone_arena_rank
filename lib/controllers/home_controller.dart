import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/area.dart';
import '../constants/mode.dart';
import '../repositories/search_repository.dart';
import '../services/main_service.dart';

class HomeController extends GetxController {
  bool isSearching = false;
  bool isResult = false;
  Map<String, dynamic> searchParams = {
    'area': AreaLabel.ap,
    'season': 46,
    'mode': ModeLabel.arena,
  };
  Map<String, dynamic> searchResult = {};
  TextEditingController battleTagController = TextEditingController();
  ModeLabel selectedMode = ModeLabel.arena;

  final searchRepository = Get.find<SearchRepository>();
  final mainService = Get.find<MainService>();

  void updateArea(AreaLabel area) {
    searchParams['area'] = area;
  }

  void updateSeason(int season) {
    searchParams['season'] = season;
  }

  void updateMode(ModeLabel mode) {
    selectedMode = mode;
    searchParams['season'] = mainService.seasons[mode.code].last;
    searchParams['mode'] = mode;
    update();
  }

  Future<void> performSearch() async {
    isSearching = true;
    searchResult = {'status': false};
    isResult = false;
    update();

    await mainService.analytics
        .logEvent(name: '[+] Search id : ${battleTagController.text}');
    await searchRepository
        .fetchRank(searchParams: searchParams, id: battleTagController.text)
        .then((result) {
      isSearching = false;
      if (result['status']) {
        isResult = true;
        searchResult = result;
        update();
      } else {
        isResult = false;
        searchResult = {'status': false};
        isSearching = false;
        update();
      }
    });
  }
}
