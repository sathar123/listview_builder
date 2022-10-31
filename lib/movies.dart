import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieImage = [
      'https://m.media-amazon.com/images/M/MV5BZmJjM2YzOWEtOTYxYi00YjhkLTliMzgtMTA2MTc0NDQ1MDM4XkEyXkFqcGdeQXVyODY5OTk4MA@@._V1_UX67_CR0,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BODcyZmVkYTQtYjRkYS00MDdhLWIyOGYtYTdkNGU2NzYxZmZkXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY98_CR1,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDgxOGYxNDQtZTE5Ny00NGY3LTg5Y2QtMWNkNjk0ZmE1NjdlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BN2E4YWJjMTUtMzk0MS00Njk5LWE0MGUtNTA5Nzk2YTZhNTI4XkEyXkFqcGdeQXVyMjk5OTQ4ODM@._V1_UY98_CR15,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDVkMDRkMzItN2EyYS00ZTI5LTljYzgtNzRmZDQ0OTQ3M2VjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX67_CR0,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDg5N2U5Y2EtNTU4NC00YTRiLWFiYmItZWM2MDJkMGI5NzcwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY98_CR5,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMjY0NWFmNzUtMDUzMC00MTY2LWIzOWMtM2MxNGZiNTk3NzgzXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_UY98_CR5,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BNTZmMjEzYTktNGQ0Zi00N2RjLTliMGYtYzU2NzAyNDNkZTI4XkEyXkFqcGdeQXVyNjU0NTI0Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BYWMwMDFlNmUtYWIxZC00ZTdjLWE2ZjctMzdjM2NmMmYyOWZlXkEyXkFqcGdeQXVyNTY5NzI0OQ@@._V1_UY98_CR0,0,67,98_AL_.jpg',
      'https://m.media-amazon.com/images/M/MV5BNWMyMzU2OTUtMDNjYi00YTMxLThkMGMtNmYwZDIxMjZlYTE0XkEyXkFqcGdeQXVyNjE5NTc1ODg@._V1_UX67_CR0,0,67,98_AL_.jpg'
    ];
    var movieTitle = [
      'When They See Us',
      'Queen Sugar',
      'DMZ',
      'Cherish the Day',
      ' The White Tiger',
      'Naomi',
      'Colin in Black & White',
      'The Red Line',
      ' Wings of Fire',
      'One Perfect Shot'
    ];
    var movieCat = [
      'Biography, Crime, Drama',
      'Drama',
      'Action, Adventure, Drama',
      'Drama, Romance',
      'Crime, Drama',
      'Action, Adventure, Drama',
      'Biography, Drama, Sport',
      'Crime, Drama',
      'Animation, Action, Adventure',
      'Documentary'
    ];
    var year = [
      '2019',
      '2016',
      '2022',
      '2020',
      '2021',
      '2022',
      '2021',
      '2019',
      '2018',
      '2022'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: ListView.builder(
          itemCount: movieTitle.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:NetworkImage(movieImage[index]),
                ),
                title: Text(movieTitle[index]),
                subtitle: Text(movieCat[index]),
                trailing: Text(year[index]),
              ),
            );
          }),
    );
  }
}
