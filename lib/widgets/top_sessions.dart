import 'package:akada_beta/data/data.dart';
import 'package:akada_beta/models/sessions.dart';
import 'package:flutter/material.dart';

class TopSessions extends StatelessWidget {
  _buildPopularSessions (BuildContext context, Session session){
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 15.0, bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 3.0, color: const Color(0xFFBBDEFB))
        ),
        child: Column(
          children: [
            Image.asset(session.imageUrl, height: 200, width: 200, fit: BoxFit.cover,),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(session.time,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(session.title,
                  style: const TextStyle(
                            color: Colors.black,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600,
                          ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(session.subtitle,
                  style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Popular Sessions',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ))
          ]),
          SizedBox(
            height: 322,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: sessions.length,
                itemBuilder: (BuildContext context, int index) {
                  Session session = sessions[index];
                  return _buildPopularSessions(context, session);
                }),
          ),
        ],
      ),
    );
  }
}