import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../common/common.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({Key? key}) : super(key: key);

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  int _current = 0;

  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 190,
            child: Swiper(
              onIndexChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              autoplay: true,
              layout: SwiperLayout.DEFAULT,
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.zero,
                      image: DecorationImage(
                          image: NetworkImage(
                            imageList[index],
                          ),
                          fit: BoxFit.cover)),
                );
              },
            ),
          ),
          const SizedBox(height: AppSizes.dimen8),
          Row(
              children: map(
            imageList,
            (index, image) {
              return Container(
                margin: const EdgeInsets.all(AppSizes.dimen4),
                alignment: Alignment.centerLeft,
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? AppColors.orange
                        : AppColors.lightGrey),
              );
            },
          ))
        ],
      ),
    );
  }
}
