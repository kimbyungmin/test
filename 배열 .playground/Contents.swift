/*
 
        * 배열(arrays) : 일련번호로 구분되는 순서에 따라 데이터가 정렬된 목록 형태의 자료형
 
 
 * 배열에 저장할 아이템의 타입에는 제약이 없지만, 하나의 배열에 저장하는 아이템 타입은 모두 같아야함
 
    * 선언 시 배열에 저장할 아이템 타입을 명확히 정의해야 함
 
        * 배열의 크기는 동적으로 확장할수 있음

 */


var cities = ["seul", "newyork", "LA", "santiago"] // 배열(문자열을 아이템으로 하는)의 정의
// 배열의 순서는 항상 왼쪽부터 0, 그후로 1, 2, 3, 4 ....


// 리터럴 : 값자체를 의미 ( var name = "홍길동") <- name 이라는 변수에 홍길동 이라는 리터럴을 대입


var a = cities.count

for i in 0..<cities.count {
    i
    print("\(i)번째 도시는 \(cities[i])입니다")
} // 0번째 도시는 seul입니다  1번째 도시는 newyork입니다 2번째 도시는 LA입니다 .....


/*
 
    * 배열의 동적 선언과 초기화
        * Array
 
    *배열 아이템의 동적 추가
        * append(_:)
            * insert(_:at:)
                * append(contentsOf:)
 */

// Array<아이템 타입>  <- 정의

var rocal = Array<String>() // 정의와 선언

rocal = [String] // 배열 초기화 첫번째 방식
rocal = [] // 배열초기화 두번째 방식

var rocal:[String] // 선언
rocal[] // 초기화


// 배열 구조체중 하나인 isEmpty 를 사용하여 배열이 비어있는지 확인하는 구문
var list = [String]()

if list.isEmpty {
    print("배열이 비어있는 상태 입니다.")
}else {
    print("배열에는 \(list.count)개의 아이템이 저장되어있습니다.")
}


// 배열 선언, 초기화 와 배열 추가

var game = [String]() // []

game.append("GTA") // ["GTA"]
game.append("spiderman") // ["GTA","spiderman"]
game.insert("tekken", at: 1) // ["GTA","tekken","spiderman"]
game.append(contentsOf: ["KOF","wow"]) // ["GTA","tekken","spiderman","KOF","WOW"]



game[1] = "TEKKEN" // 숫자에 해당하는 배열의 아이템을 바꾸는 구문
