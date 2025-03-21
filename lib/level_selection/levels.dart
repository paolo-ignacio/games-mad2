const gameLevels = <GameLevel>[
  (
    number: 1,
    winScore: 5,
    canSpawnTall: false,
    canSpawnFlying: false,
  ),
  (
    number: 2,
    winScore: 7,
    canSpawnTall: true,
    canSpawnFlying: false,
  ),
  (
    number: 3,
    winScore: 10,
    canSpawnTall: true,
    canSpawnFlying: true,
  ),
];

typedef GameLevel = ({
  int number,
  int winScore,
  bool canSpawnTall,
  bool canSpawnFlying,
});
