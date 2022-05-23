import 'package:akada_beta/data/data.dart';
import 'package:akada_beta/models/mentors.dart';
import 'package:flutter/material.dart';

class MentorList extends StatelessWidget {
  _buildMentorList(BuildContext context, Mentor mentor) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Container(
        // width: 350,
        decoration: BoxDecoration(
            color: const Color(0xFFF8F4FF),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 1.0, color: Colors.black12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 32.0,
                backgroundColor: const Color(0xff004ce2),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(mentor.imageUrl),
                ),
              ),
              const SizedBox(width: 10.0,),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mentor.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      mentor.school,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      mentor.work,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      mentor.interests,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: mentors.length,
          itemBuilder: (BuildContext context, int index) {
            Mentor mentor = mentors[index];
            return _buildMentorList(context, mentor);
          }),
    );
  }
}
