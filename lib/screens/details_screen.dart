
import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    // CAMBIAR LUEGO PARA INSTANCIA MOVIE
    // final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';


  return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(), 
              _OverView(),
              _OverView(),
              CastingCards()
            ])
            )
        ],
      ),
    );
  }
}

class _CustomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SliverAppBar(
      //appbar
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.only(bottom: 10 ),
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Text(
            'movie.child',
            style: TextStyle(fontSize: 16),
          
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
          ),
          
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

        final TextTheme textThem = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20 ),

            child: FadeInImage(
              placeholder: AssetImage('assets/no-imahe.jpg'),
          image: NetworkImage('https://via.placeholder.com/200x300'),
          height: 150,
          ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text('movie.title', style: textThem.headline5, overflow: TextOverflow.ellipsis, maxLines: 2 ,),
              Text('movie.Originaltitle', style: textThem.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 1 ,),

              Row(
                children: [
                  Icon(Icons.star_outline, size: 15, color: Colors.grey,),
                  SizedBox(width: 5,), 
                  Text('movie.voteAvarage',style: textThem.caption)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}



class _OverView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text('Enim amet adipisicing duis et amet quis anim Lorem ea sint sint ad minim veniam. Laborum aliquip ex ipsum laboris exercitation cupidatat veniam fugiat qui. Labore commodo voluptate veniam id et duis occaecat sunt nulla ea ipsum quis quis ut. ',
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.subtitle1,),
    );
  }
}






