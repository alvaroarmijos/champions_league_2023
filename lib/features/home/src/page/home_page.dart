import 'package:carousel_slider/carousel_slider.dart';
import 'package:champions_league_2023/app/app_navigator.dart';
import 'package:champions_league_2023/features/home/bloc.dart';
import 'package:champions_league_2023/features/home/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<HomePageBloc>();
    final CarouselController controller = CarouselController();

    return Scaffold(
      body: Stack(
        children: [
          const HomeBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppBarHome(),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Champions Leage",
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CarouselSlider.builder(
                    itemCount: bloc.state.news.length,
                    carouselController: controller,
                    itemBuilder: (context, index, realIndex) => NewItem(
                      news: bloc.state.news[index],
                    ),
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.53,
                      viewportFraction: 0.9,
                      onPageChanged: (index, _) =>
                          bloc.onChangeNewsEvent(index),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<HomePageBloc, HomePageState>(
                      builder: (context, state) {
                    return Indicator(
                        itemCount: bloc.state.news.length,
                        currentIndex: state.currentIndex);
                  }),
                  const SizedBox(
                    height: 16,
                  ),
                  LatestResult(
                    matchResult: bloc.state.latestResult,
                    onTap: () => AppNavigator.navigateToMatchDetail(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
