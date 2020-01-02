
let waterDegree = 10

if waterDegree > 100 {
    print("물이 다 끓었습니다.")
} else {
    print("물이 끓고 있습니다.")
}



var weight = 24
var firstClass = true

if weight > 15 {
    if firstClass == true {
        print("하지만 당신은 퍼스트 클래스이니 추가금을 지불하지 않아도 됩니다.")
    } else {
        print("수화물 용량이 초과했습니다. 추가금은 4$ 입니다.")
    }
    
} else {
    print("수화물 서비스를 무료로 이용할 수 있습니다.")
}



if weight > 15  {
    print("수화물 용량을 초과했습니다.")
    if firstClass == true {
        print("퍼스트 고객은 무료로 이용 가능합니다.")
    } else {
        print("추가금은 개당 4$ 입니다.")
    }
}



var money = 24000
var location = "신림"

if money < 15000 {
    print("최소 주문 금액 미달로 배달할 수 없습니다.")
} else {
    if location == "신림" {
        print("앗, 죄송합니다. 배달 가능 지역이 아니라 배달하지 못합니다.")
    } else {
        print("30분 내 배달 가능합니다.")
    }
}





var point = 2500
var sinceSingup = 6

if sinceSingup >= 3 {
    if point >= 1000 {
        print("적립금 사용 가능액은 \(point) 입니다.")
    } else {
        print("적립금 1000원 이상부터 사용가능합니다.")
    }
    
} else {
    print("최소 3개월 이상 고객부터 적립금 사용 가능하십니다.")
}




var userAges = 19
var cs = true

switch userAges {
case 1...19 :
    print("미성년자에게 도서를 추천합니다.")
    
case 20...39 :
    print("어른들에게 도서를 추천합니다.")
    
case 40...64 :
    print("중년의 분들께 도서를 추천합니다.")
default:
    print("와우! 도서를 증정합니다.")
}




//var peopleAges = 12
//
//switch peopleAges {
//case peopleAges < 5 :
//    print("콩순이 인형세트 당첨!")
//case 5 =< peopleAges <10 :
//    print("헤이지니 가족 뮤지컬 티켓")
//case 10 =< people
//
//default:
//    <#code#>
//}


var kidAges = 12
switch kidAges {
case 1...4 :
    print("콩순이 인형세트!")
case 5...9 :
    print("헤이지니!")
case 10...19 :
    print("필기구 세트!")
case 20...29 :
    print("소원을 말해봐.")
default:
    print("열심히 살아라.")
}
