import 'package:church/screens/home/home_components/data/videos.dart';

class VideosFaceStream {
  int _videoNumber = 0;

  List<VideosFace> _videosStreaming = [
    VideosFace('''
           <iframe width="200"  height='135 '
            src="https://www.facebook.com/v2.3/plugins/video.php? 
            allowfullscreen=false&autoplay=true&href=${'https://fb.watch/4vxIThOwY4/'}" </iframe>
     '''),
    VideosFace('''
           <iframe width="200"  height='135 '
            src="https://www.facebook.com/v2.3/plugins/video.php? 
            allowfullscreen=false&autoplay=true&href=${'https://fb.watch/4wevtMpoEn/'}" </iframe>
     '''),
    VideosFace('''
           <iframe width="200"  height='135 '
            src="https://www.facebook.com/v2.3/plugins/video.php? 
            allowfullscreen=false&autoplay=true&href=${'https://fb.watch/4weGtm_B4l/'}" </iframe>
     '''),
  ];

  String getVideo() {
    return _videosStreaming[_videoNumber].videosStrings;
  }
}
