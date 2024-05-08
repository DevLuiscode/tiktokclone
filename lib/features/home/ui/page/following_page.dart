import 'package:flutter/material.dart';

import 'package:tiktok_clone/shared/constants/colors.dart';

import 'package:tiktok_clone/shared/widgets/video_player_widget.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({
    super.key,
  });

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  final PageController _pageController =
      PageController(viewportFraction: 0.7, initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_handlePageChange);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          // Forzar un redibujado
        });
      }
    });
  }

  void _handlePageChange() {
    int page = _pageController.page!.round();
    if (_currentPage != page) {
      setState(() {
        _currentPage = page;
      });
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Creadores Populares",
            style: textTheme.bodyLarge,
          ),
          Text(
            "Sigue una cuenta para ver vides mas recientes\n aqui",
            textAlign: TextAlign.center,
            style: textTheme.displayMedium,
          ),
          const SizedBox(height: 12),
          Container(
            height: size.height * 0.5,
            width: double.infinity,
            color: Colors.transparent,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 10,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (BuildContext context, Widget? child) {
                    double value = 1.0;
                    if (_pageController.position.haveDimensions) {
                      value = _pageController.page! - index;
                      value = (1 - (value.abs() * 0.1)).clamp(0.8, 1.0);
                    }
                    return Transform.scale(
                      scale: value,
                      child: child,
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: size.height * 0.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.grey2,
                          borderRadius: BorderRadius.circular(20),
                        ), // Placeholder for the actual content
                        child: index == _currentPage
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const VideoPlayerWidget(
                                  play: true,
                                  ktoplbarheigh: false,
                                  url:
                                      'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/videos/video4.mp4',
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const VideoPlayerWidget(
                                  play: false,
                                  ktoplbarheigh: false,
                                  url:
                                      'https://zphhqkbfmmilwzqcmdgu.supabase.co/storage/v1/object/public/videos/video4.mp4',
                                ),
                              ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0.9),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 35,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              "data",
                              style: textTheme.bodySmall!
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              "@LALALa",
                              style: textTheme.displaySmall,
                            ),
                            const SizedBox(height: 12),
                            Container(
                              height: 47,
                              width: 160,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.pink,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                "Seguir",
                                textAlign: TextAlign.center,
                                style: textTheme.titleSmall!
                                    .copyWith(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
