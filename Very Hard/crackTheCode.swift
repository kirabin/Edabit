func numSum(num: Int) -> Int {
    var sum:Int = 0
    var num_copy = num

    while num_copy != 0 {
        sum += num_copy % 10
        num_copy /= 10
    }
    return sum
}

func decode(_ str: String) -> [Int] {
    var decoded:[Int] = []

    for i in str {
        decoded.append(numSum(num: Int(i.asciiValue ?? 0)))
    }
    return decoded
}

assert(decode("hello") == [5, 2, 9, 9, 3])
assert(decode("wonderful") == [11, 3, 2, 1, 2, 6, 3, 9, 9])
assert(decode("something challenging") == [7, 3, 10, 2, 8, 5, 6, 2, 4, 5, 18, 5, 16, 9, 9, 2, 2, 4, 6, 2, 4])
