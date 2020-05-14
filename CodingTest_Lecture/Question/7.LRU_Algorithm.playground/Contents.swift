import UIKit

/*:
 ### 문제4 : 자리를 양보해가며~
 * 다루고 있는 개념 : LRU 알고리즘(Least Recently Used Algorithm)
 * 난이도 : 중
 
 LRU 알고리즘은 Least Recently Used 의 약자로 직역하자면 가장 최근에 사용되지 않은 것 정도의 의미를 가지고 있습니다. 페이지에서 제거할 때 가장 오랫동안 사용하지 않은 것을 제거하겠다는 알고리즘입니다. 이 알고리즘의 기본 가설은 가장 오랫동안 사용하지 않았던 데이터는 앞으로도 사용할 확률이 적다는 것입니다.
*/

let 동물 = ["척추동물", "어류", "척추동물", "무척추동물", "파충류", "척추동물", "어류", "파충류"]

/*
 1회   [척추동물]            false 1분
 2회   [척추동물, 어류]       false 1분
 3회   [척추동물, 어류, 척추동물] -> [어류, 척추동물] true 1초 // hit됬을때 기억해야될것(어류)
 4회   [어류, 척추동물, 무척추동물] false 1분
 5회   [척추동물, 무척추동물, 파충류] false 1분
 6회   [무척추동물, 파충류, 척추동물] true 1초
 7회   [파충류, 척추동물, 어류] false 1분
 8회   [무척추동물, 척추동물, 파충류] true 1초
 
 출력 5분 3초
 */

func solution(animals: [String], count: Int) -> String {
  
  var 의자: [String] = []
  var answer = 0
  
  for animal in animals {
    if 의자.count < 3 {
      if 의자.contains(animal) {
        // hit
        let index = 의자.firstIndex(of: animal)
        의자.append(의자.remove(at: index!))
        answer += 1
      } else {
        의자.append(animal)
        answer += 60
      }
    } else {
      if 의자.contains(animal) {
        // hit
        let index = 의자.firstIndex(of: animal)
        의자.append(의자.remove(at: index!))
        answer += 1
      } else {
        의자.removeFirst()
        의자.append(animal)
        answer += 60
      }
    }
    
    print(의자)
  }
  
  return String(format: "%d분 %d초", answer / 60, answer % 60)
  
}

solution(animals: 동물, count: 3)

