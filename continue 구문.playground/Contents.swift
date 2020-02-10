/*
 
    * continue 구문
 
 */

for row in 1...5 {
    if row < 3 {
        continue
    }
    print("executed data is \(row)")
} // executed data is 3  executed data is 4  executed data 5

// "루프상수인 row의 값이 3보다 작을 때는 실행을 여기서 멈추고 다시 루프를 시작할것"
// 1. row 상수가 1 일때, 3보다 작으므로 continue에 의해 루프 다시시작
// 2. row 상수가 2 일때, 3보다 작으므로 continue에 의해 루프 다시시작
// 3. row 상수가 3 일때, 3보다 작지 않으므로 print 구문을 실행한 후 루프를 다시 시작
// 4. row 상수가 4 일때, 3보다 작지 않으므로 print 구문을 실행한 후 루프를 다시 시작
// 5. row 상수가 5 일때, 3보다 작지 않으므로 print 구문을 실행한 후 루프를 다시 시작
// 6. 반복문 종료.


// -------------------------------------------------------------------------------------


var text = "this is a swift book for apple's programming language" // 입력될 문장
var result = "" // 결과를 저장할 변수

for char in text {
    if char == " " { // 공백은 _ 로 변경한다.
        result.append("_")
        continue
    } else if char == "o" { // 소문자 o는 대문자 O 로 변경한다
        result.append("O")
continue
}
    result.append(char)
}
print(result) // this_is_a_swift_bOOk_fOr_apple's_prOgramming_language (이런 기능으로 커뮤니티에 욕설이나 비방문을 제어 가능)


