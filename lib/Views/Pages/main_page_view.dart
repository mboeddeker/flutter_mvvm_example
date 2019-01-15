import 'package:flutter/material.dart';
import 'package:mvvm_template/ViewModels/MainPageViewModel.dart';
import './main_page_state.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:mvvm_template/Views/Widgets/FilmsPanel.dart';

class MainPageView extends MainPageState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Star Wars',
          style: TextStyle(fontFamily: 'Distant Galaxy'),
        ),
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.0,
          tabs: <Widget>[
            Tab(icon: Icon(FontAwesomeIcons.film)),
            Tab(icon: Icon(FontAwesomeIcons.users)),
            Tab(icon: Icon(FontAwesomeIcons.globeAmericas))
          ],
        ),
      ),
      body: ScopedModel<MainPageViewModel>(
        model: viewModel,
        child: TabBarView(
          controller: tabController,
          children: <Widget>[FilmsPanel(), FilmsPanel(), FilmsPanel()],
        ),
      ),
    );
  }
}
