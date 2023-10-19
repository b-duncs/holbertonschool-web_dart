int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamA_points = 0;
  int teamB_points = 0;

  teamA_points += teamA['Free throws'] ?? 0;
  teamA_points += (teamA['2 pointers'] ?? 0) * 2;
  teamA_points += (teamA['3 pointers'] ?? 0) * 3;

  teamB_points += teamB['Free throws'] ?? 0;
  teamB_points += (teamB['2 pointers'] ?? 0) * 2;
  teamB_points += (teamB['3 pointers'] ?? 0) * 3;

  if (teamA_points > teamB_points) {
    return 1;
  } else if (teamA_points < teamB_points) {
    return 2;
  } else {
    return 0;
  }
}
