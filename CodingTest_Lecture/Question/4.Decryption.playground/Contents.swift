import UIKit

/*:
 ### 문제1 : 암호해독!
 * 다루고 있는 개념 : 이진 연산, 인코딩
 * 난이도 : 하
 
 모든 알고리즘을 해독할 수 있는 알고리즘 7 원석를 보유한 알고리즘 제왕 파이와 썬은 죽기 전, 이 보물에 '암호'를 걸어 세계 어딘가에 묻어놨다고 공표하였다. 그가 남긴 문자는 아래와 같다.
 
 ```python
 섬으로 향하라!

 '   + -- + - + -   '
 '   + --- + - +   '
 '   + -- + - + -   '
 '   + - + - + - +   '

 해(**1**)와 달(**0**),
 Code의 세상 안으로!(**En-Coding**)
 ```
 
 * 인코딩 : 문자나 기호의 집합을 컴퓨터에서 표현하는 방법
 */

let text = ["+ -- + - + -",
            "+ --- + - +",
            "+ -- + - + -",
            "+ - + - + - +"]

func solution(_ s: [String]) -> String {
  
  let decryptionCode = s.map {
    $0.replacingOccurrences(of: " ", with: "")
    .replacingOccurrences(of: "+", with: "1")
    .replacingOccurrences(of: "-", with: "0")
  }
  .map { Int($0, radix: 2)! }
  .map { Unicode.Scalar($0)! }
  .map { String($0) }
  
  return decryptionCode.joined()
}

solution(text)


var x = 0
for i in 1...5 {
 x += i
}

print(x)
