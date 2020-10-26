func incrementPlayerScore(player: inout Player, amount: UInt){
    let (value, overflow) = player.score.addingReportingOverflow(amount)
    if !overflow {
        player.score = value
    }
}

func decrementPlayerScore(player: inout Player, amount: UInt){
    let (value, overflow) = player.score.subtractingReportingOverflow(amount)
    if !overflow {
        player.score = value
    }
}
