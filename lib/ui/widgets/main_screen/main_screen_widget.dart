import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_movie_db/domain/data_providers/session_data_provider.dart';
import 'package:the_movie_db/ui/widgets/main_screen/main_screen_widget_model.dart';
import 'package:the_movie_db/ui/widgets/movie_list/movie_list_widget_model.dart';

import '../../../Library/Widgets/Inherited/provider.dart';
import '../movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  final movieListWidgetModel = MovieListWidgetModel();

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    movieListWidgetModel.setupLocale(context);
  }

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MainScreenWidgetModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => SessionDataProvider().setSessionId(null),
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onSelectTab,
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Сериалы',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          Text('Новости'),
          NotifierProvider(
            create: () => movieListWidgetModel,
            isManagingModel: false,
            child: const MovieListWidget(),
          ),
          Text('Сериалы'),
        ],
      ),
    );
  }
}
