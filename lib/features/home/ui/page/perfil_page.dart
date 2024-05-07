import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tiktok_clone/shared/constants/colors.dart';
import 'package:tiktok_clone/shared/constants/icons_svg.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return <Widget>[
              const SliverAppbarWidget(),
              SliverPersistentHeader(
                pinned: true,
                delegate: MyDelegate(
                  tabBar: const TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.menu),
                      ),
                      Tab(
                        icon: Icon(Icons.share_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.favorite_border_outlined),
                      ),
                    ],
                    indicatorColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ListGridWidget(),
              ListGridWidget(),
              ListGridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SliverAppbarWidget extends StatelessWidget {
  const SliverAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      leading: const Icon(Icons.arrow_back_ios),
      pinned: true,
      actions: [
        SvgPicture.asset(
          IconsSvg.bell,
          height: 30,
          colorFilter: const ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(
            IconsSvg.shareOutlined,
            height: 30,
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
      title: Text(
        "Mente estoica SPQR",
        style: textTheme.bodySmall,
      ),
      centerTitle: true,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      expandedHeight: size.height * 0.4,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.only(top: kToolbarHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(height: 12),
              Text(
                "@Tesla.com",
                style: textTheme.titleSmall,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FollowingWidget(
                    number: '732',
                    name: 'Siguiendo',
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: AppColors.grey,
                  ),
                  const FollowingWidget(
                    number: '77,1 mill',
                    name: 'Seguidores',
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: AppColors.grey,
                  ),
                  const FollowingWidget(
                    number: '8439,2 mill',
                    name: 'Me gusta',
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppColors.pink,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Text(
                      "Seguir",
                      style:
                          textTheme.titleSmall!.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Text(
                      "Mensajes",
                      style: textTheme.titleSmall,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Fortaleza en la adversidad",
                style: textTheme.titleSmall,
              ),
              const SizedBox(height: 8),
              Text(
                "Instagram",
                style: textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FollowingWidget extends StatelessWidget {
  const FollowingWidget({
    super.key,
    required this.number,
    required this.name,
  });
  final String number;
  final String name;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          number,
          style: textTheme.displayLarge,
        ),
        Text(
          name,
          style: textTheme.displaySmall,
        ),
      ],
    );
  }
}

class ListGridWidget extends StatelessWidget {
  const ListGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.pink,
        );
      },
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  MyDelegate({required this.tabBar});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color:
          Colors.white, // O cualquier color que se ajuste al diseño de tu app
      child: Column(
        children: [
          tabBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
