import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';
import 'package:sawara_solutions_pvt_ltd/constants/sizedboxes/app_sizedboxes.dart';
import 'package:sawara_solutions_pvt_ltd/constants/textstyles/app_text_styles.dart';
import 'package:sawara_solutions_pvt_ltd/view/description/description_screen.dart';
import 'package:sawara_solutions_pvt_ltd/view/widgets/bottomnavigationbar_view.dart';
import 'package:sawara_solutions_pvt_ltd/view/widgets/carousel_slider_widget.dart';

class MeetUpScreen extends StatelessWidget {
  const MeetUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        //start
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SvgPicture.asset(
                        'assets/images/search-alt-2-svgrepo-com.svg',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            bottom: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/images/mic-alt-svgrepo-com.svg',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppSizedBoxes.sizedboxH20,
            const CarouselSliderWidgetStateFiest(),
            AppSizedBoxes.sizedboxH30,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Trending Populae People",
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.boldText(
                  color: AppColors.darkBlueColor,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 420,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.blackColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundColor:
                                          AppColors.transparentColor,
                                      foregroundColor:
                                          AppColors.transparentColor,
                                      child: SvgPicture.asset(
                                        'assets/images/feather-svgrepo-com.svg',
                                        width: 34,
                                        height: 34,
                                      ),
                                    ),
                                  ),
                                  AppSizedBoxes.sizedboxW10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Author",
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.boldText(
                                          color: AppColors.darkBlueColor,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Text(
                                        "1,028 Meetups",
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.boldText(
                                          color: AppColors.greyColor,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              color: AppColors.blackColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    // height: 140.0,
                                    width: 240.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: 50.0,
                                          width: 50.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw_AGa7MhsQ41F5VaJToE672BVJBT70nZ4UpPOZ8rKDQ&s',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Positioned(
                                          left: 40.0,
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              image: const DecorationImage(
                                                image: NetworkImage(
                                                  'https://media.istockphoto.com/id/1088760714/photo/back-to-school.jpg?s=612x612&w=0&k=20&c=ED8-SH3c705HxlNeP92YnRbxOF4gMoswehl7tNpUjso=',
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 80.0,
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              image: const DecorationImage(
                                                image: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ24EdbSTQL1jC73Qy4uyzjONGznxmpI9qG3GwTwMj0gDnpFBFhOJ5w6RzkZ56bfOpWAvs&usqp=CAU',
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 120.0,
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              image: const DecorationImage(
                                                image: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAmkg1Siu6RsIRENyvcRAlT3RbtW6z9tv-CeNTZWGykqsatGP-UpuyCSo8gh03i2ScRwI&usqp=CAU',
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 160.0,
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              image: const DecorationImage(
                                                image: NetworkImage(
                                                  "https://images.unsplash.com/photo-1615789591457-74a63395c990?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Container(
                                width: 110,
                                // height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.darkBlueColor,
                                ),
                                child: Material(
                                  color: AppColors.transparentColor,
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(18.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12.0,
                                        horizontal: 24.0,
                                      ),
                                      child: Text(
                                        "See more",
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.boldText(
                                          color: AppColors.whiteColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            AppSizedBoxes.sizedboxH20,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Top Trending Meetup",
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.boldText(
                  color: AppColors.darkBlueColor,
                  fontSize: 22,
                ),
              ),
            ),
            AppSizedBoxes.sizedboxH10,
            SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const DescriptionScreen());
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                "https://www.shutterstock.com/image-photo/portrait-young-female-professor-explaining-600nw-2300906089.jpg",
                                height: 200,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "01",
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyles.boldText(
                                      fontSize: 40,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
