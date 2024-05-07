import 'package:flutter/material.dart';

import 'package:tiktok_clone/shared/widgets/floating_bottom_widget.dart';

import 'package:tiktok_clone/shared/widgets/video_player_widget.dart';

class ForyouPage extends StatelessWidget {
  const ForyouPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.black,
      child: PageView.builder(
        itemCount: 12,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return SizedBox(
            height: size.height,
            width: size.width,
            child: const Stack(
              alignment: Alignment.center,
              children: [
                VideoPlayerWidget(
                  play: true,
                  ktoplbarheigh: true,
                ),
                FloatingButtonsWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
