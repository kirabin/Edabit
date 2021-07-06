func duplicateCount(_ str: String) -> Int {
    var visited = Set<Character>()
    var repeated = Set<Character>()

    for i in str {
        if visited.contains(i) {
            repeated.insert(i)
        }
        visited.insert(i)
    }
    return repeated.count
}

assert(duplicateCount("abcd") == 0)
assert(duplicateCount("aavAdeef") == 2)
