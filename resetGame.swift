enum GameState {
    case readyToStart
    case playing
    case gameOver
    
    mutating func resetGame() {
        self = .readyToStart
    }
}
