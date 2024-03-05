import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';

class CarouselSliderWidgetStateFiest extends StatefulWidget {
  const CarouselSliderWidgetStateFiest({super.key});

  @override
  CarouselSliderWidgetStateFiestState createState() =>
      CarouselSliderWidgetStateFiestState();
}

class CarouselSliderWidgetStateFiestState
    extends State<CarouselSliderWidgetStateFiest> {
  List<String> imageUrls = [
    'https://www.shutterstock.com/image-photo/happy-african-american-student-raising-600nw-1937721487.jpg',
    'https://media.istockphoto.com/id/1369917180/photo/large-group-of-college-students-listening-to-their-professor-on-a-class.jpg?s=612x612&w=0&k=20&c=VKWAFCEmSzPWf0Xx-o4uVgo2opkrhMemIxjhFuUueGE=',
    'https://media.istockphoto.com/id/1456765622/photo/smiling-student-and-teacher-interacting-in-class.webp?b=1&s=170667a&w=0&k=20&c=8olpO1rnNyLQfJDHr8Zdje0WdIgjy_cAFzfOSrPAKnw=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTnEdqhuHihinQP_V_4AdP0buvsMOtCXFcKY8JsfQ0WWPY8dd9IwW5AWkCk8LtHEQEu9U&usqp=CAU',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 10,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrls.map((imageUrl) {
            int index = imageUrls.indexOf(imageUrl);
            return Container(
              width: 10,
              height: 10,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    _currentIndex == index ? AppColors.blackColor : Colors.grey,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
