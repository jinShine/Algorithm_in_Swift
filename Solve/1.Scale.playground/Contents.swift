import UIKit

/*:
 ### 음계
 * 백준 : 2920문제
 * [BAEKJOON](https://www.acmicpc.net/problem/2920)
 */

//"1 2 3 4 5 6 7 8"
//"8 7 6 5 4 3 2 1"
//"8 1 7 2 6 3 5 4"

//let list = "8 1 7 2 6 3 5 4".split(separator: " ").map { Int($0)! }
let list = readLine()!.split(separator: " ").map { Int($0)! }

var ascCase = false
var desCase = false

for i in (1..<list.count) {
    if list[i - 1] < list[i] {
        ascCase = true
    } else if list[i - 1] > list[i] {
        desCase = true
    }
}

if ascCase && desCase {
    print("mixed")
} else if ascCase {
    print("ascending")
} else {
    print("descending")
}
