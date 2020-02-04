/*
 * 조건문
 */

// if 구문

var age = 29
var adult = 19

if age < adult {
    print("미성년자 입니다.")
} else {
    print("성인 입니다.")
}
// 기본적인 if 구문과 else 구문 - if 구문은 블록 내에서 중첩이 가능하지만 가독성 난해한 코드조합때문에 될수있으면 피한다.


//------------------------------------------------

// else if 구문


var browser = "safari" //입력받을 브라우저명
var browsername:String //브라우저 이름을 저장할 변수

if browser == "IE" {
    browsername = "인터넷 익스플로러"
}else{
    if browser == "FF" {
        browsername = "파이어폭스"
    }else{
        if browser == "chrome" {
            browsername = "크롬"
        }else{
            if browser == "opera" {
                browsername = "오페라"
            }else{
                if browser == "safari" {
                    browsername = "사파리"
                }else{
                    browsername = "알수없는 브라우저"
                }
            }
        }
    }
}
print("현재 사용하고 있는 브라우저는 \(browsername) 입니다")

// 위의 예제는 단순히 if 와 else 구문을 이용한 코드이다. 복잡해 보이는 이 코드를 else if 구문을 사용하여 같은 코드를 작성한 밑예 에시를 보자

if browser == "IE" {
    browsername = "인터넷 익스플로러"
}else if browser == "FF" {
    browsername = "파이어폭스"
}else if browser == "chrome" {
    browsername = "크롬"
}else if browser == "ofera" {
    browsername = "오페라"
}else if browser == "safari" {
browsername = "사파리"
} else {
    browsername = "알수없는 브라우저"
}

print("현재 사용하고 있는 브라우저는 \(browsername)입니다.")

// 위의 코드와 동일한 코드를 if~else if 구문을 사용하여 작성한 코드. 이처럼 다양한 코드를 활용해서 가독성을 높이고 리소스를 절약할것.



