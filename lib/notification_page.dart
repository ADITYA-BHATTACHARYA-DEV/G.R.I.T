import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
 
  late YoutubePlayerController _controller;
  @override
  void initState()
  {
     const videoUrl ='https://youtu.be/cnKZit6VB44?feature=shared';
    final videoID =YoutubePlayer.convertUrlToId(videoUrl)!;
    _controller =YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop:false,
       

      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.movie),
        
        title: const Text('Meditation Player'),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
             const videoUrl ='https://youtu.be/cnKZit6VB44?feature=shared';
             _controller.load(YoutubePlayer.convertUrlToId(videoUrl)!);
          }, child: const Text('next Video')),
          YoutubePlayer(controller: _controller,
          showVideoProgressIndicator: true,
          onReady: ()=> debugPrint('Ready'),
          bottomActions: [CurrentPosition(),
          ProgressBar(
            isExpanded: true,
            colors: const ProgressBarColors(
              playedColor: Colors.red,
              handleColor: Colors.redAccent,

            ),
          ),
          const PlaybackSpeedButton(),
          ],
          )

        ],
      ),
    );
  }
}







