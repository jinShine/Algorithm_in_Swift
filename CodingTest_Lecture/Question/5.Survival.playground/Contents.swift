import UIKit

/*:
 ### 문제1 : 서바이벌!
 * 다루고 있는 개념 : JSON 처리
 * 난이도 : 하
 
 1. 각 돌들이 얼마나 버틸수 있는지 배열로 주어집니다. (내구도 0까지는 독의 몸무게를 버틸 수 있습니다. 0미만이 되면 독은 살아남지 못합니다.)
 2. 각 독들의 개인정보가 JSON(JSON은 큰 따옴표로 묶여야 합니다. **가능하다면 json을 import하여 풀어보세요!**)으로 주어집니다. 개인정보는 보호되지 않습니다.
 3. 각 돌에 독들이 착지할 때 돌의 내구도는 몸무게만큼 줄어듭니다.
     ex) [1,2,1,4] 각 돌마다 몸무게 1인 독 1마리 2마리 1마리 4마리의 착지를 버틸 수 있습니다.
 4. 독들의 점프력이 각자 다릅니다.
     ex) 점프력이 2라면 2칸씩 점프하여 착지합니다.
 
 ```python
 **입력**
 돌의내구도 = [1, 2, 1, 4]
 독 = [{
     "이름" : "루비독",
     "나이" : "95년생",
     "점프력" : "3",
     "몸무게" : "4",
     },{
     "이름" : "피치독",
     "나이" : "95년생",
     "점프력" : "3",
     "몸무게" : "3",
     },{
     "이름" : "씨-독",
     "나이" : "72년생",
     "점프력" : "2",
     "몸무게" : "1",
     },{
     "이름" : "코볼독",
     "나이" : "59년생",
     "점프력" : "1",
     "몸무게" : "1",
     },
 ]

 **출력**
 생존자 : ['씨-독']

 **입력**
 돌의내구도 = [5, 3, 4, 1, 3, 8, 3]
 독 = [{
     "이름" : "루비독",
     "나이" : "95년생",
     "점프력" : "3",
     "몸무게" : "4",
     },{
     "이름" : "피치독",
     "나이" : "95년생",
     "점프력" : "3",
     "몸무게" : "3",
     },{
     "이름" : "씨-독",
     "나이" : "72년생",
     "점프력" : "2",
     "몸무게" : "1",
     },{
     "이름" : "코볼독",
     "나이" : "59년생",
     "점프력" : "1",
     "몸무게" : "1",
     },
 ]

 **출력**
 생존자 : ['루비독', '씨-독']
 ```
 */

//let durability = [1, 2, 1, 4]
let durability = [5, 3, 4, 1, 3, 8, 3]
let infoData = """
[
  {
    "이름" : "루비독",
    "나이" : "95년생",
    "점프력" : "3",
    "몸무게" : "4"
  },
  {
    "이름" : "피치독",
    "나이" : "95년생",
    "점프력" : "3",
    "몸무게" : "3",
  },
  {
    "이름" : "씨-독",
    "나이" : "72년생",
    "점프력" : "2",
    "몸무게" : "1",
  },
  {
    "이름" : "코볼독",
    "나이" : "59년생",
    "점프력" : "1",
    "몸무게" : "1",
  }
]
""".data(using: .utf8)!

struct DocInfo: Codable {
  let 이름: String
  let 나이: String
  let 점프력: String
  let 몸무게: String
}

let info = try! JSONDecoder().decode([DocInfo].self, from: infoData)

func servival(durability: [Int], info: [DocInfo]) -> [String] {
  
  var durability = durability
  var resultDog: [String] = []
  
  info.forEach {
    var location = 0
    var failure = false
    
    while location < durability.count - 1 {
      location += Int($0.점프력)!
      
      durability[location - 1] -= Int($0.몸무게)!
      
      if durability[location - 1] < 0 {
        failure = true
        return
      }
      
    }
    
    if !failure {
      resultDog.append($0.이름)
    }
  }
  
  return resultDog
}

servival(durability: durability, info: info)
