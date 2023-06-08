import 'package:carousel_slider/carousel_slider.dart';
import 'package:champions_league_2023/features/home/src/bloc.dart';
import 'package:champions_league_2023/features/home/src/widgets.dart';
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
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Champions Leage",
              style: theme.textTheme.displaySmall,
            ),
            CarouselSlider.builder(
              itemCount: 3,
              carouselController: controller,
              itemBuilder: (context, index, realIndex) => const NewItem(),
              options: CarouselOptions(
                height: 400,
                viewportFraction: 0.9,
                onPageChanged: (index, _) => bloc.onChangeNewsEvent(index),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<HomePageBloc, HomePageState>(builder: (context, state) {
              return Indicator(itemCount: 3, currentIndex: state.currentIndex);
            })
          ],
        ),
      ),
    );
  }
}
