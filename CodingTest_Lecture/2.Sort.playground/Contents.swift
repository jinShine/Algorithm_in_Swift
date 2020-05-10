import UIKit

/*:
 ![정렬 알고리즘 시간복잡도 비교](./sort-time-complexity.png)
 */

let 입력값 = [5, 10, 2, 73, 15, 6, 66, 3]

/*:
### 선택 정렬
 * 선택 정렬은 배열을 처음부터 훑어서 가작 작은 수를 제일 앞에 가져다 놓습니다
 
 * 해당 순서에 원소를 넣을 위치는 이미 정해져 있고, 어떤 원소를 넣을지 선택하는 알고리즘,
    첫 번째 순서에는 첫 번째 위치에 가장 최솟값을 넣는다.
 * 성능이 좋지 않아도 배우는 이유는 코드가 간단하고, 작은 수(보통 30 이하)에서는 효과적이기 때문
*/


func getMin(_ nums: [Int]) -> Int {
  var min = nums.first!
  
  nums.forEach {
    if $0 < min {
      min = $0
    }
  }
  
  return min
}

getMin(입력값)

func getMinIndex(_ nums: [Int]) -> Int {
  
  var min = nums.first!
  var minIndex = 0
  var count = 0
  
  nums.forEach {
    if $0 < min {
      min = $0
      minIndex = count
      return
    }
    
    count += 1
  }
  
  return minIndex
}

getMinIndex(입력값)


/*:
### 삽입 정렬
 * 삽입 정렬은 2번째 원소부터 시작해서 그 앞의 원소들과 비교해서 삽입할 위치를 지정한 후 그 자리에 삽일을 하는 정렬.
*/

func insertion(_ nums: [Int]) -> [Int] {
  var list: [Int] = nums
  
  for i in 1..<list.count {
    var index = i
    
    // 첫 0인덱스는 못들어옴
    while index > 0 && list[index] < list[index - 1] {
      list.swapAt(index, index-1)
      index -= 1
    }
  }

  return list
}

insertion(입력값)
  

/*:
### 병합 정렬
 * worst, best가 O(nlogn) 이기 때문에 병합정렬이 가장 빠르다.
 * 분할, 정복
 
  // 분할
 1. [5, 10, 2, 73], [15, 6, 66,  3]
 2. [5, 10], [2, 73], [15, 6], [66, 3]
 3. [5], [10],[ 2],[73], [15], [6], [66], [3]
 
  // 정복
 [5, 10], [2, 73], [6, 15], [3, 66]
 [2, 73, 5, 10], [3, 66, 6, 15]
 [2, 3, 5, 6, 10, 15, 66, 73]
*/

func mergeSort(_ nums: [Int]) -> [Int] {

  if nums.count <= 1 { return nums }
  
  let mid = nums.count / 2

  var lList = mergeSort(Array(nums[0..<mid]))
  var rList = mergeSort(Array(nums[mid..<nums.count]))

  var result: [Int] = []

  while !lList.isEmpty && !rList.isEmpty {
    if lList[0] < rList[0] {
      result.append(lList.remove(at: 0))
    } else {
      result.append(rList.remove(at: 0))
    }
  }

  // 배열 left 와 right 둘 중 하나에만 데이터가 남아 있는 경우가 있기 때문 아래와 같이 while문을 통해 작업해줘야된다.
  while !lList.isEmpty {
    result.append(lList.remove(at: 0))
  }

  while !rList.isEmpty {
    result.append(rList.remove(at: 0))
  }

  return result
}


print(mergeSort(입력값))
