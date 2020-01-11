import UIKit

//------------------------------------------------------------
/* [Tuple] */
//------------------------------------------------------------

// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("klaus", 100, 186.9)

// 인덱스를 통해 값을 빼올 수 있다.
print("이름: \(person.0), 나이: \(person.1), 키: \(person.2)")
//output : 이름: klaus, 나이: 100, 키: 186.9

// 인덱스를 통해 값을 할 당할 수 있다.
person.1 = 99
person.2 = 181.9
print("이름: \(person.0), 나이: \(person.1), 키: \(person.2)")
//output : 이름: klaus, 나이: 99, 키: 181.9

// 각 요소의 데이터를 인덱스로 뽑아오는 것은 쉽지않다.
// 튜플의 요소마다 이름을 붙일 수 있다.

var person1: (name: String, age: Int, height: Double) = ("klaus", 100, 186.9)
print("이름: \(person1.name), 나이: \(person1.age), 키: \(person1.height)")

// 요소의 이름 통해서 값을 할당할 수 있다.
person1.age = 36
person1.2 = 199.1 // 이름을 지정해도, 인덱스로 값을 할당할 수 있다.




//------------------------------------------------------------
/* [Array] */
/*
 - Array + 타입 이름의 조합으로 사용 : Array<Int>
 - 대괄호로 값을 묶어 Array 타입임을 표현할 수 있다.
 - 빈 배열
    - 이니셜라이저
    - 리터럴 문법
 - 확인 property
    - isEmpty : 배열이 비었는지 확인
    - count : 몇 개의 요소가 있는지 확인
 */
//------------------------------------------------------------

// let
// var

// 두 선언 방법 Array<String> == [String]
var names1: Array<String> = ["Klaus", "Jaein", "trump", "Klaus"]

var names2: [String] = ["Klaus", "Jaein", "trump", "Klaus"]

// 빈 배열 선언 두가지 방법 : Array<>() == [Any]()
var emptyArray1: [Any] = [Any]() // Any 데이터 타입을 가지는 빈 배열을 생성
var emptyArray2: [Any] = Array<Any>()

// Array 타입을 정확히 명시했다면 [] 만으로도 빈 배열을 생성할 수 있다.
var emptyArray3: [Any] = []
var emptyArray4: [Any] = Array<Any>()

/*
- 배열은 각 요소에 인덱스를 통해 접근할 수 있다.
- 마지막 요소는 first와 last property를 통해 가져올 수 있따.
- index(of:) 메서드를 사용하면 해당 요소의 인덱스를 알아낼 수 있다.
- 만약 중복된 요소가 있다면, 제일 먼저 발견된 요소의 인덱스를 반환한다.
- 요소추가
    - 맨 뒤에 요소를 추가하고 싶다면, append(_:) 메서드를 사용한다.
    - 중간에 요소 추가, insert(_:at:) 메서드 사용
    - 요소 삭제, remove(_:) 메서드 사용
*/



// Array에 Array로 추가할 수 있다.
//var names3 = names1.append(contentsOf: ["John","max"])
names1.append(contentsOf: ["John","max"]) // 다시 할당 안해도 이미 들어가 있음
print(names1)

// 들어가는 위치를 정해서 넣을 수 있다.
names1.insert("happy", at: 2)
print(names1)

// Array에 Array로 추가할 수 있다. + 들어가는 위치 정해서 넣기
names1.insert(contentsOf: ["john", "misoon"], at: 5)
print(names1)

//
print(names1[3])
print(names1.index(of: "Jaein")) // Optional(1)
print(names1.firstIndex(of: "Klaus")) // Optional(0)
print(names1.first)
print(names1.last)


print(names2) //["Klaus", "Jaein", "trump", "Klaus"]
let firstItem: String = names2.removeFirst()
print(firstItem)
print(names2) //["Jaein", "trump", "Klaus"]
let lastItem: String = names2.removeLast()
print(lastItem)
print(names2) // ["Jaein", "trump"]
let indexZeroItem: String = names2.remove(at: 0)
print(indexZeroItem)
print(names2)


print(names1[1 ... 3])


