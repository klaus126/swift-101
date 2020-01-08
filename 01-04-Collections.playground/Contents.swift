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
