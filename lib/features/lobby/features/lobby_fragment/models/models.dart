class CardItem {
  final String title;
  final String Participants;
  final List<String> Statistic;
  final String entryFee;
  final String totalPrize;
final String timeLeft;

  CardItem(
   {required this.entryFee,
     required this.totalPrize,
    required this.title,
    required this.Participants,
    required this.Statistic,
     required this.timeLeft,
  });
}

List<CardItem> CardItemListLobby = [
  CardItem(
      title: 'LSG vs GT',
      Participants: '🚩 vs 🚩',
      Statistic: ['Bt.NotOut', 'Bw Runs', 'R Out'],
    entryFee: '50',
    totalPrize: '1500',
    timeLeft: '1 Day Left'
  ),
  CardItem(
      title: 'KKR vs MI',
      Participants: '🚩 vs 🚩',
      Statistic: ['Bw Runs', 'Bt.NotOut', 'R Out','Duck','5 Wickets'],
      entryFee: '10',
      totalPrize: '75',
  timeLeft: '06:12:51'),
  CardItem(
      title: 'CSK vs SRH',
      Participants: '🚩 vs 🚩',
      Statistic: ['R Out', 'Bw Runs', 'Bt.NotOut'],
      entryFee:'20',
      totalPrize: '100',
  timeLeft: '2 Days Left'),
  CardItem(
      title: 'SRH vs KKR',
      Participants: '🚩 vs 🚩',
      Statistic: ['Bt.NotOut', 'Bw Runs', 'R Out'],
      entryFee: '50',
      totalPrize: '7500',
  timeLeft: '4 Days Left'),
  CardItem(
      title: 'IND vs PAK',
      Participants: '🚩 vs 🚩',
      Statistic: ['Bw Runs', 'R Out', 'Bt.NotOut'],
      entryFee: '150',
      totalPrize:'500',
  timeLeft: 'Starting Soon'),
  CardItem(
      title: 'SRH vs MI',
      Participants: '🚩 vs 🚩',
      Statistic: ['R Out', 'Bt.NotOut', 'Bw Runs'],
      entryFee: '50',
      totalPrize: '75',
  timeLeft: '6 Days Left')
];
