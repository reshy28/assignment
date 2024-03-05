import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';
import 'package:sawara_solutions_pvt_ltd/constants/sizedboxes/app_sizedboxes.dart';
import 'package:sawara_solutions_pvt_ltd/constants/textstyles/app_text_styles.dart';
import 'package:sawara_solutions_pvt_ltd/view/widgets/carousel_slider_widget_second.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Individual MeetUp",
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.boldText(
            color: AppColors.darkBlueColor,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 336,
                  width: 400,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.whiteColor,
                        AppColors.whiteColor,
                        AppColors.loghtGreyColor,
                        AppColors.loghtGreyColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0.2, 0.8, 1],
                    ),
                    // color: AppColors.loghtGreyColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      const CarouselSliderWidgetStateSecond(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/images/download-svgrepo-com.svg',
                            width: 26,
                            height: 26,
                          ),
                          SvgPicture.asset(
                            'assets/images/save-svgrepo-com.svg',
                            width: 30,
                            height: 30,
                          ),
                          SvgPicture.asset(
                            'assets/images/love-svgrepo-com.svg',
                            width: 26,
                            height: 26,
                          ),
                          SvgPicture.asset(
                            'assets/images/scan-svgrepo-com.svg',
                            width: 30,
                            height: 30,
                          ),
                          SvgPicture.asset(
                            'assets/images/star-svgrepo-com.svg',
                            width: 26,
                            height: 26,
                          ),
                          InkWell(
                            onTap: () async {
                              await FlutterShare.share(
                                title: 'Share',
                                text: 'We can share message here',
                                linkUrl: 'Link',
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/images/share-svgrepo-com.svg',
                              width: 26,
                              height: 26,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              AppSizedBoxes.sizedboxH10,
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/save-svgrepo-com.svg',
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    "1034",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.boldText(
                      color: AppColors.greyColor,
                      fontSize: 14,
                    ),
                  ),
                  AppSizedBoxes.sizedboxW10,
                  SvgPicture.asset(
                    'assets/images/love-svgrepo-com.svg',
                    width: 22,
                    height: 22,
                  ),
                  Text(
                    "1034",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.boldText(
                      color: AppColors.loghtGreyColor,
                      fontSize: 14,
                    ),
                  ),
                  AppSizedBoxes.sizedboxW10,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.loghtGreyColor,
                    ),
                    child: RatingBar.builder(
                      itemSize: 20,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.blueColor,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  AppSizedBoxes.sizedboxW10,
                  Text(
                    "3.2",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.boldText(
                      color: AppColors.greyColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              AppSizedBoxes.sizedboxH30,
              Text(
                "Actor Name",
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.boldText(
                  color: AppColors.darkBlueColor,
                  fontSize: 18,
                ),
              ),
              AppSizedBoxes.sizedboxH10,
              Text(
                "Indian Actress",
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.boldText(
                  color: AppColors.greyColor,
                  fontSize: 16,
                ),
              ),
              AppSizedBoxes.sizedboxH20,
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/clock-svgrepo-com.svg',
                    width: 22,
                    height: 22,
                  ),
                  AppSizedBoxes.sizedboxW5,
                  Text(
                    "Duration 20 Mins",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.boldText(
                      color: AppColors.greyColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              AppSizedBoxes.sizedboxH10,
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/wallet-svgrepo-com.svg',
                    width: 22,
                    height: 22,
                  ),
                  AppSizedBoxes.sizedboxW5,
                  Text(
                    "Total Average Fees RS 9.999",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.boldText(
                      color: AppColors.greyColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              AppSizedBoxes.sizedboxH30,
              Text(
                "Actor ",
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.boldText(
                  color: AppColors.darkBlueColor,
                  fontSize: 18,
                ),
              ),
              Text(
                "From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.",
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.boldText(
                  color: AppColors.greyColor,
                  fontSize: 16,
                ),
              ),
              AppSizedBoxes.sizedboxH10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "See More",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.boldText(
                      color: AppColors.darkBlueColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              AppSizedBoxes.sizedboxH30,
            ],
          ),
        ),
      ),
    );
  }
}
