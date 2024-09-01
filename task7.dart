void getComputerMove() {
    int move;

    // First see if there's a move O can make to win
    for (int i = 0; i < boardSize; i++) {
      if (_mBoard[i] != humanPlayer && _mBoard[i] != computerPlayer) {
        String curr = _mBoard[i];
        _mBoard[i] = computerPlayer;
        if (checkWinner() == 3) {
          print('Computer is moving to ' + (i + 1));
          return;
        } else
          _mBoard[i] = curr;
      }
    }

    // See if there's a move O can make to block X from winning
    for (int i = 0; i < boardSize; i++) {
      if (_mBoard[i] != humanPlayer && _mBoard[i] != computerPlayer) {
        String curr = _mBoard[i]; // Save the current number
        _mBoard[i] = humanPlayer;
        if (checkWinner() == 2) {
          _mBoard[i] = computerPlayer;
          print("Computer is moving to " + (i + 1));
          return;
        } else
          _mBoard[i] = curr;
      }
    }
  }