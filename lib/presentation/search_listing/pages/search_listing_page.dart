import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zillow/utils/app_colors.dart';

class SearchListingPage extends StatelessWidget {
  const SearchListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: AppColors.white,
              toolbarHeight: 69,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Container(color: AppColors.white),
                titlePadding: EdgeInsets.all(15),
                title: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Aghmid, Aley Distict",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.bluishGray,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/search_bg.svg"),
                        const SizedBox(width: 20),
                        SvgPicture.asset("assets/icons/notification.svg"),
                        const SizedBox(width: 20),
                        SvgPicture.asset("assets/icons/menu.svg"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 15,
                    right: 15,
                  ),
                  child: Card(
                    margin: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    child: SizedBox(
                      width: 384,
                      height: 250,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              "assets/homes_img/${index + 1}.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),

                          Container(
                            color: AppColors.black.withAlpha(64),
                            child: SizedBox.expand(),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 10,
                              bottom: 10,
                              right: 13,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: AppColors.black
                                            .withAlpha(64),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ), // 👈 rounded corners
                                        ),
                                        side: BorderSide(
                                          strokeAlign: 2,
                                          color: AppColors.white.withAlpha(64),
                                        ),
                                      ),
                                      child: Text(
                                        "Apartment",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 7),
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: AppColors.black
                                            .withAlpha(64),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ), // 👈 rounded corners
                                        ),
                                        side: BorderSide(
                                          strokeAlign: 2,
                                          color: AppColors.white.withAlpha(64),
                                        ),
                                      ),
                                      child: Text(
                                        "For Sale",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      "assets/icons/heart_small.svg",
                                      colorFilter: ColorFilter.mode(
                                        AppColors.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ 135,000,000",
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "70 Bright St, Jersey City, NJ USA",
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "4 beds  3 baths  367 sqm",
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "11",
                                          style: TextStyle(
                                            color: AppColors.white,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/pictures.svg",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }, childCount: 10),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: AppColors.blue,
          child: SvgPicture.asset(
            "assets/icons/filter.svg",
            colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
