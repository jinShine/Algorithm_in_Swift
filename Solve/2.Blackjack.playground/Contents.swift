import UIKit

/*:
 ### 블랙잭
 * 백준 : 2798문제
 * 문제 유형: 배열, 완전 탐색
 * [BAEKJOON](https://www.acmicpc.net/problem/2798)
 */

/*
 
 <경우의 수>
 
 n장의 카드에서 3장을 고를경우
   -> n*(n-1)*(n-2) / 3!
 
 */

//let input = "5 21".split(separator: " ").map { Int($0)! }
//let data = "5 6 7 8 9".split(separator: " ").map { Int($0)! }

let input = readLine()!.split(separator: " ").map { Int($0)! }
let data = readLine()!.split(separator: " ").map { Int($0)! }

var maxResult = input.last!
var result = 0

for i in (0..<data.count) {
    for j in (i+1..<data.count) {
        for k in (j+1..<data.count) {
            let sumValue = data[i] + data[j] + data[k]
            if sumValue <= maxResult {
                result = max(result, sumValue)
            }
        }
    }
}

print(result)
