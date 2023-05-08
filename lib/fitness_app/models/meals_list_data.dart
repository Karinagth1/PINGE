import 'package:best_flutter_ui_templates/fitness_app/fitness_app_home_screen.dart';
import 'package:best_flutter_ui_templates/fitness_app/my_diary/granulados_screen.dart';
import 'package:best_flutter_ui_templates/fitness_app/my_diary/my_diary_screen.dart';
import 'package:best_flutter_ui_templates/fitness_app/my_diary_home.dart';
import 'package:best_flutter_ui_templates/fitness_app/my_granu_home.dart';
import 'package:flutter/material.dart';

class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: '3000 PSI',
      kacl: 0,
      meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
      startColor: '#C9DC6F',
      endColor: '#AFCB27',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/lunch.png',
      titleTxt: '4000 PSI',
      kacl: 0,
      meals: <String>['Vigas', 'Columnas', 'Losas'],
      startColor: '#C9DC6F',
      endColor: '#AFCB27',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: '4500 PSI',
      kacl: 0,
      meals: <String>['Vigas', 'Columnas', 'Losas'],
      startColor: '#C9DC6F',
      endColor: '#AFCB27',
    ),
  ];
}

class ProductListData {
  ProductListData({
    this.image = '',
    this.index = 0,
    this.navigation,
    this.title = '',
    this.isSelected = false,
    this.animationController,
  });

  String image;
  String title;
  Widget? navigation;
  bool isSelected;
  int index;
  AnimationController? animationController;

  static List<ProductListData> areaListData = <ProductListData>[
    ProductListData(
      image: 'assets/fitness_app/area1.png',
      title: 'Materiales granulados y agregados',
      index: 0,
      isSelected: true,
      animationController: null,
      navigation: MyGranuHome(),
    ),
    ProductListData(
      image: 'assets/fitness_app/area2.png',
      title: 'Mezclas asfálticas',
      index: 1,
      isSelected: false,
      animationController: null,
      // navigation: GranuladosScreen(),
    ),
    ProductListData(
      image: 'assets/fitness_app/area3.png',
      title: 'Concreto premezclado',
      index: 2,
      isSelected: false,
      animationController: null,
      navigation: MyDiaryHome(),
    ),
    ProductListData(
      image: 'assets/fitness_app/area4.png',
      title: 'Obras de infraestructura',
      index: 3,
      isSelected: false,
      animationController: null,
      // navigation: TrainHome(),
    ),
  ];
}

class GranuListData {
  GranuListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<GranuListData> tabGranuList = <GranuListData>[
    GranuListData(
      imagePath: 'assets/fitness_app/base.png',
      titleTxt: 'Base',
      kacl: 0,
      meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
      startColor: '#46510F',
      endColor: '#2E360A',
    ),
    GranuListData(
      imagePath: 'assets/fitness_app/sub_base.png',
      titleTxt: 'Sub-base',
      kacl: 0,
      meals: <String>['Vigas', 'Columnas', 'Losas'],
      startColor: '#46510F',
      endColor: '#2E360A',
    ),
    GranuListData(
      imagePath: 'assets/fitness_app/arenas.png',
      titleTxt: 'Arenas',
      kacl: 0,
      meals: <String>['Vigas', 'Columnas', 'Losas'],
      startColor: '#46510F',
      endColor: '#2E360A',
    ),
    GranuListData(
      imagePath: 'assets/fitness_app/triturados.png',
      titleTxt: 'Triturados',
      kacl: 0,
      meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
      startColor: '#46510F',
      endColor: '#2E360A',
    ),
    GranuListData(
      imagePath: 'assets/fitness_app/afirmados.png',
      titleTxt: 'Afirmados',
      kacl: 0,
      meals: <String>['Vigas', 'Columnas', 'Losas'],
      startColor: '#46510F',
      endColor: '#2E360A',
    ),
    GranuListData(
      imagePath: 'assets/fitness_app/piedras.png',
      titleTxt: 'Piedras',
      kacl: 0,
      meals: <String>['Vigas', 'Columnas', 'Losas'],
      startColor: '#46510F',
      endColor: '#2E360A',
    ),
  ];
}
