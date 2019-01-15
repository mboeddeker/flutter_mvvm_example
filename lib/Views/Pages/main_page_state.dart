import 'package:flutter/material.dart';
import 'package:mvvm_template/ViewModels/MainPageViewModel.dart';
import 'package:mvvm_template/Service/SwapiService.dart';
import './main_page.dart';

abstract class MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  MainPageViewModel viewModel;
  TabController tabController;

  @override
  void initState() {
    super.initState();
    viewModel = MainPageViewModel(api: SwapiService());
    tabController = TabController(vsync: this, length: 3);
    loadData();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Future loadData() async {
    await viewModel.setFilms();
    await viewModel.setCharacters();
    await viewModel.setPlanets();
  }
}
