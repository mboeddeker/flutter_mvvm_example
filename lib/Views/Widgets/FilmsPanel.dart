import 'package:flutter/material.dart';
import 'package:mvvm_template/Models/Film.dart';
import 'package:mvvm_template/ViewModels/MainPageViewModel.dart';
import 'package:scoped_model/scoped_model.dart';

class FilmsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainPageViewModel>(
      builder: (context, child, model) {
        return FutureBuilder(
          future: model.films,
          builder: (context, AsyncSnapshot<List<Film>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(child: const CircularProgressIndicator());
              case ConnectionState.done:
                if (snapshot.hasData) {
                  var films = snapshot.data;
                  return ListView.builder(
                    itemCount: films == null ? 0 : films.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(films[index].title),
                        subtitle: Text(films[index].director),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  Center(child: Text(snapshot.error.toString()));
                }
            }
          },
        );
      },
    );
  }
}
