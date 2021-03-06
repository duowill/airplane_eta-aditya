import 'package:flutter/material.dart';
import '../utils/utils.dart';
import 'video_card.dart';
import 'photo_card.dart';

class MediaSection extends StatelessWidget {
  final title;
  final List<String> media;
  final bool isPhoto;

  const MediaSection({
    Key key,
    @required this.title,
    this.media,
    this.isPhoto = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: AppTextStyles.subHeaderTextStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            height: screenWidth * 1.0,
            child: ListView.builder(
              itemCount: media.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                var item = media[index];
                return isPhoto
                    ? PhotoCard(photo: item)
                    : VideoCard(video: item);
              },
            ),
          )
        ],
      ),
    );
  }
}
