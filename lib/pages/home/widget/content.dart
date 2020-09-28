import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resty/models/geocode.dart';
import 'package:resty/pages/home/bloc/home_bloc.dart';
import 'package:resty/pages/home/widget/item-card.dart';

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContentWidget();
}

class _ContentWidget extends State<ContentWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      // set circual loading on initial state
      if (state is StateInitial) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      // set circular loading on loading state
      if (state is StateLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      // set _onSuccess widget when data loaded successfully
      if (state is StateSuccess) {
        return _onSuccess(state.data, state.popular, state.selected);
      }

      // show error message on failure state
      if (state is StateFailure) {
        return Text('Sorry, pleas check your connection!');
      }

      return Container();
    });
  }

  Widget _onSuccess(GeocodeModel data, GeocodeModel popular, String selected) {
    return ListView(
      padding: EdgeInsets.only(left: 10.0, top: 70),
      children: [
        // Adobe XD layer: 'Food & Delivery' (text)
        Text(
          'Food & Delivery',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            color: const Color(0xff000000),
            height: 1.5,
          ),
          textAlign: TextAlign.left,
        ),
        Divider(
          color: Colors.transparent,
        ),
        Container(
          constraints: new BoxConstraints(
            maxHeight: 30.0,
          ),
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: data.popularity.topCuisines.length,
            itemBuilder: (BuildContext context, int index) {
              var item = data.popularity.topCuisines[index];

              if (index == 0) {
                return ListView(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _FilterWidget(
                      title: 'All',
                      selected:
                          selected == null || selected == 'All' ? true : false,
                      bloc: BlocProvider.of<HomeBloc>(context),
                    ),
                    _FilterWidget(
                      title: item,
                      selected:
                          selected != null ? selected.contains(item) : false,
                      bloc: BlocProvider.of<HomeBloc>(context),
                    ),
                  ],
                );
              }

              return _FilterWidget(
                title: item,
                selected: selected != null ? selected.contains(item) : false,
                bloc: BlocProvider.of<HomeBloc>(context),
              );
            },
          ),
        ),
        Divider(
          color: Colors.transparent,
        ),
        Text(
          'Near you',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: const Color(0xff373737),
            height: 1.25,
          ),
          textAlign: TextAlign.left,
        ),
        Divider(
          color: Colors.transparent,
        ),
        Container(
          constraints: new BoxConstraints(
            maxHeight: 230.0,
          ),
          child: data.nearbyRestaurant.length > 0
              ? ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.nearbyRestaurant.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    var item = data.nearbyRestaurant[index];
                    return ItemCard(restaurant: item);
                  },
                )
              : Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 100),
                  child: Text('No Result'),
                ),
        ),
        Divider(
          color: Colors.transparent,
        ),
        data.nearbyRestaurant.length > 0
            ? Text(
                'Popular',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xff373737),
                  height: 1.25,
                ),
                textAlign: TextAlign.left,
              )
            : Container(),
        Divider(
          color: Colors.transparent,
        ),
        Container(
          constraints: new BoxConstraints(
            maxHeight: 230.0,
          ),
          child: popular.nearbyRestaurant.length > 0
              ? ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: popular.nearbyRestaurant.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    var item = popular.nearbyRestaurant[index];
                    return ItemCard(restaurant: item);
                  },
                )
              : Container(),
        ),

        Divider(
          color: Colors.transparent,
        ),
        // Adobe XD layer: 'Btn view all' (group)
        data.nearbyRestaurant.length > 0
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150.0,
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(26.0),
                        bottomRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(26.0),
                      ),
                      color: const Color(0xff365eff),
                    ),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 18,
                        height: 1.7777777777777777,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            : Container(),
        Divider(
          color: Colors.transparent,
        ),
      ],
    );
  }
}

class _FilterWidget extends StatelessWidget {
  final HomeBloc bloc;
  final String title;
  final bool selected;

  const _FilterWidget(
      {Key key, @required this.title, this.selected = false, this.bloc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
          decoration: this.selected
              ? BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                  ),
                  color: const Color(0xffedf0ff),
                )
              : null,
          child: // Adobe XD layer: 'Group' (group)
              Text(
            this.title,
            style: TextStyle(
              fontFamily: 'Montserrat-Medium',
              fontSize: 12,
              color: this.selected ? Color(0xff365eff) : Color(0xff000000),
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => _onTap(),
    );
  }

  _onTap() {
    this.bloc.add(HomeFilter(title));
  }
}
