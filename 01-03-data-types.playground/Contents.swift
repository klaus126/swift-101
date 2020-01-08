import UIKit

//------------------------------------------------------------
/* [데이터 타입]
   변수 차원에서는 값을 어떤 형태의 데이터로 넣어줬는지 알 수 없다.

   i. implicit : 암시적으로 선언이 되었다.
       - 위에서 밑으로 내려가면서 앞서 문자가 한번 들어갔기때문에 뒤에서 숫자를 쓸 수 없다고 판단
       ex. var number = 1

   ii. explicit : 명시적으로 선언
       ex. var number:String=3
*/
//------------------------------------------------------------

// i. implicit
var hello = "Hello, playground"

// ii. explicit
var num1: Int = 2

//------------------------------------------------------------
/*  [Int vs UInt]  */
// i. Int : +, - 포함한 정수
// ii. UInt : 0을 포함한 양의 정수
//------------------------------------------------------------

// Int vs UInt
var integer: Int = -100
let unsignedInteger: UInt = 50 //UInt에는 음의 정수를 할당할 수 없다.

print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
print("Int 최대값: \(Int.max), Int 최소값: \(Int.min)")
//output : Int 최대값: 9223372036854775807, Int 최소값: -9223372036854775808
print("UInt 최대값: \(UInt.max), UInt 최소값: \(UInt.min)")
//output : UInt 최대값: 18446744073709551615, UInt 최소값: 0





//------------------------------------------------------------
/*  [Bool]  */
// true vs false
//------------------------------------------------------------
var booleanValue: Bool = true
booleanValue.toggle() // true/false 반전
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = true

print("시간은 무한한가요? \(isTimeUnlimited)")
// output : true





//------------------------------------------------------------
/*  [Float vs Double]  */
// Float(32 bit, 6자리 숫자) vs Double(64 bit, 15자리 10진수)
//------------------------------------------------------------
var floatValue: Float = 1234567890.1
//output : 1.234568e+09
var doubleValue: Double = 1234567890.1
//output : 1234567890.1



//cf. 임의의 수 만들기
Int.random(in: -100...100) //output : -73
UInt.random(in: 0...100) //output : 98
Float.random(in: -1.7...9.6) //output : -0.8184416
Double.random(in: -50.5...100.3) //output : 100.01098279941..




//------------------------------------------------------------
/*  [Charater]  */
// 유니코드9 문자 : 영어, 특수기호, 한글, 이모티콘 등 사용가능
//------------------------------------------------------------
let 한글: Character = "ㄱ"
print(한글)




//------------------------------------------------------------
/*  [String]  */
// 문자열, 유니코드9사용가능하며 값의 앞뒤에 "" 사용
//------------------------------------------------------------
//이니셜라이저를 사용하여 빈 문자열 생성가능
var emptyStr: String = String()

//.append() 메서드를 사용하여 문자열을 이어붙일 수 있다.
emptyStr.append("짜잔! ")

// + 연산자를 통해서도 이어붙일 수 있다.
emptyStr = emptyStr + "이어붙여집니다."
print(emptyStr)

//--------------------------
// count를 셀수 있다,
emptyStr.count
//output : 12

//--------------------------
// 빈문자열인지 확인가능
emptyStr.isEmpty
//output : false

//--------------------------
//unicode scalar 값으로도 표현 가능
let unicodeScalarValue: String = "\u{2665}"
//output : ♥

//--------------------------
// 연산자를 통해 문자열을 비교할 수 있다.
let ho: String = "ho!"
let ha: String = "ha!"

var isSameString: Bool = false

isSameString = ho == "ho!"
//output : true
print(isSameString)
//output : true

isSameString = ho == "ha!"
//output : false
print(isSameString)
//output : false

isSameString = ho == "ho!"
//output : true

//isSameString = sayHello == "sayHello"
//output : error -> unresolved identifier

//--------------------------
// 메서드를 통한 접두어, 접미어 확인
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
//output : true
// 위에서 정의해두었음. var hello = "Hello, playground"


hasPrefix = hello.hasPrefix("HE")
//output : false

hasPrefix = emptyStr.hasPrefix("짜잔")
//output : true

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
//output : false

hasSuffix = hello.hasSuffix("llo")
//output : false

//--------------------------
// 메서드를 통한 대소문자 변환
var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)
//output : HELLO, PLAYGROUND

convertedString = hello.lowercased()
print(convertedString)
//output : hello, playground

convertedString = emptyStr.uppercased()
print(convertedString)
//output : 짜잔! 이어붙여집니다.


//--------------------------
// property를 통한 빈 문자열 확인
var isEmptyString: Bool = false
isEmptyString = emptyStr.isEmpty
print(isEmptyString) // false

var greeting: String = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString) // false

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString) // true


//--------------------------
// property를 통한 문자열 길이 확인
print(greeting.count) // 0

greeting = "안녕하세요"
print(greeting.count) // 5

greeting = "안녕!"
print(greeting.count) // 3




//output :

//--------------------------





//------------------------------------------------------------
/*  [Convert string to integer]  */
// 우리가 보기 숫자 10과 문자 10의 경우 차이를 잘 모른다.
// 10 vs "10"
//------------------------------------------------------------

10 + 11
// output : 21

"10" + "11"
// output : "1011"

// String 타입으로 선언 후, 해당 변수를 숫자로 바꾸기
var numString = "10"
Int(numString)



//------------------------------------------------------------
/* [convert integer to string] */
// swift만의 독특한 방식
// String Interpolation
//------------------------------------------------------------
var number3=5
var str6="hello"
"\(number3)"    //문자인데 안에 다른 변수를 넣을 때도 사용한다.
"\(str6)! \(number3)"   //역슬래쉬, 괄호안에 변수를 넣어 문자열을 불러오고, 나머지에 띄워쓰기, 느낌표 등을 사용하면 그대로 적용된다.
String(number3)



//------------------------------------------------------------
/* Int, double */
//------------------------------------------------------------
// 소수점 이하를 버리는 방법을 integer라고 부른다.
3/2
//double(float보다 더 큰 숫자를 표현할 수 있고, float이 쓸 수 있는 범위를 모두 포괄한다.) / float  소수점
3.0/2.0

// 1.5라는 결과값을 정수로만 표현하려고 한다면
Int(3.0/2.0)
