import 'package:flutter/material.dart';
import 'package:teste_covid_api/get_data.dart';

class HomeState {
  late GetData getData;
  late final Map countries;
  int isLoaded = 0;
  String valueSelected = 'Loading';
  final State homePage;
  int infecteds = 0;
  int recovereds = 0;
  int deaths = 0;

  HomeState({
    required this.homePage,
  }) {
    getData = GetData();
    getDataFromApi();
  }

  void getDataFromApi() async {
    countries = await getData.callGetData();
    homePage.setState(
      () {
        valueSelected = 'Afghanistan';
        isLoaded = 1;
      },
    );
  }

  void setCardsData() {
    countries.entries.forEach(
      (element) {
        if (element.key == valueSelected) {
          infecteds = element.value['All']['confirmed'];
          recovereds = element.value['All']['recovered'];
          deaths = element.value['All']['deaths'];
        }
      },
    );
  }
}
