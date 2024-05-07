import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tiktok_clone/shared/constants/colors.dart';
import 'package:tiktok_clone/shared/constants/icons_svg.dart';

class FloatingButtonsWidget extends StatelessWidget {
  const FloatingButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: const AlignmentDirectional(1, 0.7),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            SizedBox(
              height: 60,
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 25,
                  ),
                  Positioned(
                    bottom: -1,
                    right: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.pink,
                      child: SvgPicture.asset(
                        IconsSvg.add,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            SvgPicture.asset(IconsSvg.favorite),
            Text(
              "31,9 mill",
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 12),
            SvgPicture.asset(IconsSvg.comments),
            Text(
              "546",
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 12),
            SvgPicture.asset(IconsSvg.save),
            Text(
              "1345",
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 12),
            SvgPicture.asset(IconsSvg.share),
            Text(
              "2764",
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 12),
            const CircleAvatar(
              radius: 20,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
