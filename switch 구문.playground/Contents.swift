/*
 
 * switch 구문
 
 */

// switch 구문은 case 키워드로 시작하는 여러개의 패턴을 나열하는 방식의 구문 (비교패턴이 일치할 경우 그에 해당하는 구문이 실행된 후 나머지 case 에 대한 비교없이 switch 구문을 종료)
// 구문이 끝날때 반드시 default 구문으로 코드의 종료를 알린다.

let val = 2

switch val {
case 1:
    print("일치한 값은 1 입니다.")
case 2:
    print("일치한 값은 2 입니다.")
case 2:
    print("일치한 값 2가 더 있습니다.")
default:
    print("일치하는 값이 없습니다.")
} // 일치한 값은 2 입니다.

// 14행의 값과 16행의 값이 일치하지만 switch 구문의 특성상 14행의 값만 송출한후 코드가 종료되는 모습.
// 타 언어에서는 위의 예제를 입력한 경우 break 구문을 별도로 작성하지 않는 이상 14행과 16행 까지 송출되는 모습을 볼수있다.(이를 암묵적 fallthrough 라고 한다)

let samplechar: Character = "a"

switch samplechar {
case "a":
    print("일치하는 값은 a 입니다.")
    fallthrough
case "A":
    print("일치하는 값은 a 입니다.")
default:
    print("값이 일치하지 않습니다.")
}//일치하는 값은 a 입니다. 일치하는 값은 a 입니다.

// 필요에 의해 명시적으로 fallthrough 를 사용한 예제


// case 비교패턴에는 하나 이상의 키워드가 가능

var value = 3

switch value {
case 0, 1:
    print("0 또는 1 입니다.")
case 2, 3:
    print("2 또는 3 입니다.")
default:
    print("default 입니다")
}// 2 또는 3 입니다.


// 시간을 예시로 참조할만한 코드

var passtime = 1957

switch passtime {
case 0..<60:
    print("방금 작성된 글입니다.")
case 60..<3600:
    print("조금전 작성된 글입니다.")
case 3600..<86400:
    print("얼마전 작성된 글입니다.")
default:
    print("예전에 작성된 글입니다.")
} //조금전 작성된글입니다.

// --------------------------------------------------------------------

var point = (3, -3)

switch point {
case let (x, y) where x == y :
    print("\(x)과 \(y)은 x==y 선 상에 있습니다.")
case let (x, y) where x == -y :
    print("\(x)과 \(y)은 x==-y 선 상에 있습니다.")
case let (x, y) :
    print("\(x)과 \(y)은 일반 좌표 상에 있습니다.")
} // 3과 -3은 x==-y 선 상에 있습니다.

// 비교대상으로 사용된 point 변수는 위 switch 구문의 case 블록에서 각각 (x, y) 로 할당되고, 이 임시 변수들은 다시 where 구문에서 조건비교에 사용됨.
