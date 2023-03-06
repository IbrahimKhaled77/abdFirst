
abstract class NewAppState {}


class initsingNewAppState extends NewAppState {}

class NewAppStateBottomNvig extends NewAppState {}

class NewAppStateLoting extends NewAppState {}

class NewAppStatesccsufl extends NewAppState {}

class NewAppStateerror extends NewAppState {

  final String error;

  NewAppStateerror(this.error);


}


class NewAppStateLotingsport extends NewAppState {}

class NewAppStatesccsuflsport extends NewAppState {}

class NewAppStateerrorsport extends NewAppState {

  final String error;

  NewAppStateerrorsport (this.error);


}

class NewAppchanMode  extends NewAppState {}

class NewAppStateLotingscieen extends NewAppState {}

class NewAppStatesccsuflscieen  extends NewAppState {}

class NewAppStateerrorscieen  extends NewAppState {

  final String error;

  NewAppStateerrorscieen (this.error);


}



class NewAppStateLotingsearch extends NewAppState {}

class NewAppStatesccsufsearch  extends NewAppState {}

class NewAppStateerrorsearch  extends NewAppState {

  final String error;

  NewAppStateerrorsearch (this.error);


}

class NewAppStateChangMode extends NewAppState {}

class SelectedState extends NewAppState {}
