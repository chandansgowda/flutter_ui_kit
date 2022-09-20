import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MusicAppHomeScreen extends StatelessWidget {
  static const routeName = '/music-app-home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: IconButton(
          onPressed: () {
            //TODO:Implement onpressed functionality
          },
          icon: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,),
        ),
        title: const Text("Playing now",style: TextStyle(fontFamily: 'Roboto',color: Colors.black),),
        centerTitle: true,
        actions: const [
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //For song complition percentage and image
            Column(
              children: [
                CircularPercentIndicator(
                  radius: MediaQuery.of(context).size.height * 0.15,
                  lineWidth: 3.0,
                  percent: 0.8,
                  center: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            color: Colors.pinkAccent,
                            spreadRadius: 2)
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        width: MediaQuery.of(context).size.width * 0.44,
                        height: MediaQuery.of(context).size.width * 0.44,
                        "assets/images/music_app/kesariya.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  backgroundColor: Colors.white12,
                  progressColor: Colors.pinkAccent,
                ),
                //For current time and total song duration
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("3:30"),
                    Text("4:24"),
                  ],
                ),
              ],
            ),
            Column(
              children: const[
                //For song title
                Text(
                  "Kesariya",
                  style: TextStyle(fontSize: 23, fontFamily: 'Pacifico'),
                ),
                SizedBox(
                  height: 10,
                ),
                //For singer name
                Text(
                  "Unknown",
                  style: TextStyle(fontSize: 13, fontFamily: 'Roboto'),
                ),
              ],
            ),
            SizedBox(height: 5,),

            //For iconbuttons add ,favorite and playlist
            Container(
              decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        //TODO:OnPressed functionality for add icon
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        //TODO:OnPressed functionality for favorite icon
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 21,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        //TODO:OnPressed functionality for playlist icon
                      },
                      icon: const Icon(
                        Icons.playlist_add,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            //For iconbuttons loop,previous ,play/pause,next,shuffle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    //TODO:Onpressed functionality for loop icon
                  },
                  icon: const Icon(Icons.loop_rounded),
                ),
                IconButton(
                  onPressed: () {
                    //TODO:Onpressed functionality for previous icon
                  },
                  icon: const Icon(Icons.skip_previous),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          color: Colors.pinkAccent,
                          spreadRadius: 5)
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      //TODO:Onpressed functionality for play/pause icon
                    },
                    icon: const Icon(Icons.pause),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //TODO:Onpressed functionality for next icon
                  },
                  icon: const Icon(Icons.skip_next),
                ),
                IconButton(
                  onPressed: () {
                    //TODO:Onpressed functionality for shuffle icon
                  },
                  icon: const Icon(Icons.shuffle),
                ),
              ],
            ),
            //For sound bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.volume_mute),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
                  lineHeight: 3.0,
                  percent: 0.7,
                  barRadius: const Radius.circular(25),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.black12,
                  progressColor: Colors.pinkAccent,
                ),
                const Icon(Icons.volume_up_sharp)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
