func findShortestWords(_ str: String) -> [String] {
    var shortestWords:[String] = []
    var shortestWordsLen = Int.max
    let filteredStr = str.filter({$0.isLetter || $0 == " "})
    let words = filteredStr.split(separator: " ")

    for word in words {
        if shortestWordsLen > word.count {
            shortestWordsLen = word.count
            shortestWords = [String(word.lowercased())]
        } else if shortestWordsLen == word.count {
            shortestWords.append(String(word.lowercased()))
        }
    }

    return shortestWords.sorted(by: <)
}

assert(findShortestWords("I think the solution is fairly obvious.") == ["i"])
assert(findShortestWords("Chase two rabbits, catch none.") == ["two"])
assert(findShortestWords("Chase two rabbits, catch no.") == ["no"])
assert(findShortestWords("We become what we think about.") == ["we", "we"])
assert(findShortestWords("The quick brown fox jumped over the lazy dogs back.") == ["fox", "the", "the"])
