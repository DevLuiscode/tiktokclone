import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:tiktok_clone/features/home/ui/bloc/cubit/home_page_controller_cubit.dart';
import 'package:tiktok_clone/shared/constants/colors.dart';

import 'package:tiktok_clone/shared/constants/icons_svg.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<HomePageControllerCubit, HomePageControllerState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, kToolbarHeight, 0, 0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: widget.preferredSize.height,
            width: widget.preferredSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          IconsSvg.camera,
                          width: 30,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 2),
                          child: const Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 16,
                              ),
                              Positioned(
                                left: 10,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ...List.generate(
                  2,
                  (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          context
                              .read<HomePageControllerCubit>()
                              .updatePage(page: index);

                          selectedIndex = state.page;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: IconAppbarWIdget(
                          isSelected: state.page == index,
                          title: appbarList[index]['title']!,
                        ),
                      ),
                    );
                  },
                ),
                const Spacer(),
                SizedBox(
                  width: size.width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SvgPicture.asset(
                          IconsSvg.live,
                          height: 30,
                        ),
                      ),
                      SvgPicture.asset(
                        IconsSvg.search,
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class IconAppbarWIdget extends StatelessWidget {
  const IconAppbarWIdget(
      {super.key, required this.isSelected, required this.title});

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: isSelected
              ? textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontSize: 22,
                )
              : textTheme.headlineSmall!.copyWith(
                  color: AppColors.grey6,
                  fontSize: 22,
                ),
        ),
        const SizedBox(height: 5),
        AnimatedContainer(
          height: 4,
          width: 35,
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          duration: const Duration(milliseconds: 500),
        )
      ],
    );
  }
}
