/*
 
    * 집합
 
 */


var genres : Set = ["classic", "rock", "balad"] // 집합의 정의


// 기본 집합 연산


/*
 
 * intersection(_:)  // 양쪽 집합에서 공통되는 아이템만 선택
 
 * symmertricDifference(_:) // 양쪽 집합에서 어느 한쪽에만 있는 아이템을 선택
 
 * union(_:) // 양쪽 집합에 있는 모든아이템 선택
 
 * subtract(_:) // 한쪽 집합에 있는 모든 아이템에서 다른쪽 집합에도 속하는 공통 아이템을 제외하고 선택
 
 */


var oddDigits:Set = [1, 3, 5, 7, 9] // 홀수 집합
let evenDigits:Set = [0, 2, 4, 6, 8] // 짝수 집합
let primeDigits:Set = [2, 3, 5, 7] // 소수 집합

oddDigits.intersection(evenDigits).sorted() // []
oddDigits.symmetricDifference(primeDigits).sorted() // [1, 2, 9]
oddDigits.union(evenDigits).sorted() // [0, 1, 2, 3, 4, 5, 6, ,7 8, 9]

oddDigits.subtract(primeDigits)
oddDigits.sorted() // [1, 9]


let A:Set = [1, 3, 5, 7, 9]
let B:Set = [3, 5]
let C:Set = [3, 5]
let D:Set = [2, 4, 6]

B.isSubset(of: A) // true
A.isSuperset(of: B) // true
C.isStrictSubset(of: A) //true
C.isStrictSubset(of: B) // false
A.isDisjoint(with: D) // true

// ------------------------------------------------------------------------------------------

var i = [4, 2, 5, 1, 7, 4, 9, 11, 3, 5, 4] // 배열

i = Array(Set(i)) // [7, 11, 3, 4, 5, 1, 2, 9]

//배열의 중복을 제거해주는 구문
