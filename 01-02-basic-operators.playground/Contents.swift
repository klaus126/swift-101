import UIKit

var str = "Hello, playground"
//------------------------------------------------------------
/*
 함수, 메서드, 인스턴스의 첫 글자는 소문자로 사용하는 lowerCamelCase를 사용
 대소문자 구분 : var vs Var 다르게 인식
 */



//------------------------------------------------------------
/*
 [퀵 헬프를 위한 주석]
 1. 한줄 주석 : // + /
 /// 퀵헬프를 통해 내용을 확인할 수 있습니다.
 
 2. 여러줄 주석 : * 두개 사용
 /**
 퀵 헬프에서 이 내용을 확인할 수 있습니다.
 
 텍스트 간 한줄 비움은 줄바꿈이 적용 됩니다.
 
 '-', '+', '*'를 사용하여 원형 글 기호를 사용할 수 있습니다.
 - ('-') 기호
 + ('+') 기호
 * ('*') 기호
 
 번호 글 기호 사용 가능
 1. 1번
 2. 2번
 6. 3번(6. 이라고 표기했음)
 
 '---' 바 세개는 문단 바꿈
 ---
 
 '*이탤릭체*'
 *이탤릭체
 
 '**굵은 폰트**'
 **굵은 폰트**
 
 '[링크](url)'
 [깃허브(http://github.com)
 
 ---
 큰 제목 표시
 ===

 #큰 제목 표시
 
 중간 제목 표시
 ---
 
 ##중간 제목 표시
 
 
     //네 칸 들여쓰기 : 코드 블럭
     let myName: String = "Klaus"
     print(myName)
 
 "```세 개를 쓸 경우, 역시 코드블럭)
 ```
 let myName: String = "Klaus"
 ```
 
 '- note' : 강조하고싶은 메모
 '- author' : 작성자
 '- warning' : 주의해야할 점
 
 - note: 이 노트는 중요합니다.
 - author: Klaus
 - warning: warning!
  **/
 */




//------------------------------------------------------------
/* [Assignment Operator] : 상수와 변수
    i. 변수
    ii. 상수
 */
//------------------------------------------------------------
// i. 변수
var hello: String = "Hello, playground"
var helloo = "Hello~"

var number: Int = 1
var num1 = 1

number = 3
number += 2
number

// ii. 상수
let number2 = 2




//------------------------------------------------------------
/* [Arithmetic Operators]*/
//------------------------------------------------------------

//str = 5
//오류 문자가 담겼던 변수에는 숫자가 담길수 없다.
12+3
15-6
12*36
17.0/2.5
96/8 //몫을 보여주는 연산자
57%7 //나머지를 보여주는 연산자

var minusSix = -6 //변수에 "-"를 사용할 경우, 음수로 만들 수 있다.


//------------------------------------------------------------
/* Comparison Operators : result -> boolean type*/
//------------------------------------------------------------
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1


//------------------------------------------------------------
/* [usage in "if" statement]
 Comparison operators are often used in conditional statements,
 such as the "if" statement :
*/
//------------------------------------------------------------
let world = "world"
if world == "world" {
    print("hello, world")
} else {
    print("I`m sorry\(world), but I don`t recognize you")
}
// prints "hello, world", because name is indeed equal to "world".




//------------------------------------------------------------
/*[Usage of Comparison Operators in tuple] */
//------------------------------------------------------------
(1,"zebra")<(2,"apple")
// true because 1 is less than 2; "zebra" and "apple" are not compared
(3,"apple")<(3,"bird")
// true because 3 is equal to 3, and "apple" is less than "bird"
(4,"dog")==(4,"dog")
// true because 4 is equal to 4, and "dog" is equal to "dog"
