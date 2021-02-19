import Foundation

//structは初期化パラメータを入れなくてもビルドは通る
struct TestStruct {
    var age: Int = 0
    var name: String = ""
    
    func say(){
        print("私の名前は\(name)です。\(age)歳です")
    }
}

//classは初期化パラメータを入れないとエラーが出る
class TestClass {
    var age: Int = 0
    var name: String = ""
    
 //classの場合、このように初期化しなければいけない
//    init(age: Int, name: String) {
//        self.age = age
//        self.name = name
//    }
    
    func say(){
        print("私の名前は\(name)です。\(age)歳です")
    }
}





//structは勝手にパラメータのあるイニシャライザが可能
let testStruct = TestStruct(age: 20, name: "高木")
let testClass = TestClass()
testClass.age = 30
testClass.name = "アオキ"

testStruct.say()
testClass.say()
print("--------------")

//structは定数として固定されているので変更不可
//testStruct.age = 50

//classはあくまで参照先の変数を変えているだけなので、変更可能
testClass.age = 50


//データがどうコピーされるのかをチェック
var testStruct2 = testStruct

testStruct2.age = 50

//元の値は変わらない
print("元のstruct")
testStruct.say()
print("コピーしたstruct")
testStruct2.say()

var testClass2 = testClass

testClass2.age = 99

//参照なので、元の値も変わってしまう
print("元のclass")
testClass.say()
print("コピーしたclass")
testClass2.say()
