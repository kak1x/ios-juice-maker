# iOS 커리어 스타터 캠프
# 🍹 쥬스 메이커 

> 프로젝트 기간: 2022.12.26 ~ 2023.01.13
> 
> 팀원: 👩🏻‍💻[리지](https://github.com/yijiye?tab=repositories), 👨🏻‍💻[kaki](https://github.com/kak1x) | 리뷰어: 👩🏻‍💻[Judy](https://github.com/Judy-999)
>


## 목차
1. [프로젝트 소개](#프로젝트-소개)
2. [타임라인](#타임라인)
3. [폴더구조](#폴더구조)
4. [순서도](#순서도)
5. [실행 화면](#실행-화면)
6. [트러블 슈팅](#트러블-슈팅)
7. [팀회고](#팀회고)
8. [참고 링크](#참고-링크)


# 프로젝트 소개

과일 쥬스를 선택하여 재고를 확인하고 과일 쥬스를 생성하는 앱

<br/>

# 타임라인 
- 23.01.02 (월): Fruit 타입 정의 및 FruitStore 기능 추가
- 23.01.03 (화): 쥬스메이커 기능 구현
- 22.01.04 (수): STEP1 에러 처리 구현, 접근 제어 구현 및 컨벤션 수정
- 22.01.05 (목): STEP1 feedback 사항 수정 (함수 기능 수정, 에러 추가, 파라미터명 수정), 초기 재고 값 화면 표시 구현 및 버튼 액션 추가
- 22.01.06 (금): 쥬스 만들기 성공, 실패에 따른 Alert 실행 구현
- 22.01.09 (월): STEP2 기능 구현 완료
- 22.01.10 (화): STEP2 feedback 사항 수정 (함수명 수정, 접근 제어 수정, 싱글톤 패턴 수정), STEP3 오토레이아웃 설정
- 22.01.11 (수): STEP3 IBAction Collection 설정, 딸기 stepper 기능 구현
- 22.01.12 (목): STEP3 기능 구현 완료
- 22.01.13 (금): 추가학습 - delegate 패턴 구현
- 22.01.16 (월): 함수명 수정 및 IBOutlet Collection 추가
- 22.01.17 (화): forEach 구문 수정 및 오토레이아웃 수정
<br>

# 폴더구조
```
├── Controller
|   ├── AppDelegate
|   ├── SceneDelegate
|   ├── OrderJuiceViewController
├── └── ManageStockViewController
├── Model
|   ├── JuiceMaker
|   ├── FruitStore
|   ├── Fruit
|   ├── JuiceMenu
├── └── JuiceMakerError
├── View
|   ├── Main
|   ├── Assets
└── └── LaunchScreen
```

# 순서도
<details>
    <summary><big>순서도</big></summary>
<img src = "https://user-images.githubusercontent.com/114971172/212245180-e672632c-a3af-4442-8ebc-f88b84627135.png">
    </details>

# Sequence Diagram
<details>
    <summary><big>Sequence Diagram</big></summary>
<img src = "https://i.imgur.com/fpnHV0w.png">
    </details>
    
# Class Diagram
<details>
    <summary><big>Class Diagram</big></summary>
<img src = "https://i.imgur.com/NG4Fd7K.png">
    </details>


# 실행 화면
### 1. JuiceMaker 앱 실행 화면

- JuiceMaker 앱 실행 시 초기 재고 10개가 각 과일 아래에 표시됨.

<img src ="https://i.imgur.com/zK9Ynxn.png" width="600">

### 2. 쥬스 주문 버튼 실행

- 쥬스 주문 시 재고가 있다면 해당 쥬스가 성공적으로 만들어졌다는 alert창 실행. 이후 현재 재고 다시 표시.
- 쥬스 주문 시 재고가 부족하다면 재고가 부족하다는 alert창 실행.
  
<img src = "https://user-images.githubusercontent.com/114971172/210932923-06b5dc53-2833-4327-bdc4-b26fe0684091.gif" width="600">

### 3. 재고 수정 alert 창 예 / 아니오 버튼 실행
- 예 버튼 클릭시 재고수정 화면으로 이동
- 아니오 버튼 클릭시 화면 변화 없음

<img src = "https://user-images.githubusercontent.com/114971172/212245503-9d688023-8ee5-4bb2-97cb-c568b94fd85a.gif" width="600">

### 4. 화면이동
- 재고수정 버튼을 누르면 재고 추가 화면으로 이동
- 닫기 버튼을 누르면 주문 화면으로 이동

<Img src = "https://user-images.githubusercontent.com/114971172/212246436-fd4eae4d-b25b-45f0-9e12-6e7d9d20cf2d.gif" width="600">


### 5. 재고 추가 화면에서 Stepper를 이용한 재고 변경 및 주문 화면 업데이트

- stepper의 + 를 누르면 재고가 +1씩 증가하고 - 를 누르면 -1씩 감소하도록 구현
- 재고를 업데이트하고 닫기를 누르면 주문 화면에서 변경된 재고가 업데이트 되도록 구현

<img src = "https://user-images.githubusercontent.com/114971172/212245976-8b99d1ea-d6cb-4628-9acf-62919ec2f8e6.gif" width ="600">


# 트러블 슈팅 

## **[기능 구현]**

### 1. JuiceMaker 실행 로직
  - Dictionary로 선언 후 재고를 비교하여 재고가 없으면 에러를 발생하게 로직을 구성하였는데, 재료가 2개 들어가는 경우 랜덤하게 바뀌는 Dictonary의 순서에 따라 재고가 부족한 과일 먼저 비교하여 정상적으로 작동이 되거나 혹은 재고가 충분한 과일 먼저 비교하여 해당 과일의 재고를 감소시킨 이후 재고가 부족하다는 에러가 발생하는 오류가 발생하였습니다. 

### ⚒️ 해결방법
```swift
struct JuiceMaker {
    let fruitStore = FruitStore()
    var receipe: [Dictionary<Fruit, Int>.Element] = []
    
    mutating func makeJuice(_ juiceMenu: JuiceMenu) -> Bool {
        do {
            try checkCurrentStock(juiceMenu)
            for (fruit, stock) in receipe {
                try fruitStore.subtractStock(of: fruit, amount: stock)
            }
            return true
        } catch JuiceMakerError.outOfStock {
            print("재고가 부족합니다.")
            return false
        } catch JuiceMakerError.fruitError {
            print("과일 선택 오류입니다.")
            return false
        } catch {
            print("알 수 없는 오류가 발생했습니다.")
            return false
        }
    }
    
    mutating func checkCurrentStock(_ juiceMenu: JuiceMenu) throws {
        for fruit in juiceMenu.receipe.keys {
            if fruitStore.fruitStocks[fruit] == 0 {
                throw JuiceMakerError.outOfStock
            } else {
                receipe = juiceMenu.receipe.sorted { $0.1 > $1.1 }
            }
        }
    }
}
```
- 이를 해결하기 위해 필요한 과일의 종류를 먼저 받아서 해당 과일의 재고를 확인한 뒤 0개인 과일이 있으면 에러를 발생하게 처리해주고, 두 과일 모두 재고가 존재할 시 과일의 소모량이 큰 과일 순서대로 재고를 비교할 수 있게 ```checkCurrentStock``` 함수를 추가해주었습니다.
- 소모량이 큰 과일을 순서대로 비교하기 위해  ```juiceMenu.receipe.sorted { $0.1 > $1.1 }``` 와 같이 딕셔너리에 순서를 주는 sorted()와 고차함수를 사용하였습니다.

### 2. do-catch 구문에서 try 사용
- 1번의 문제를 해결하면서 오류처리를 어떻게 해야할지 고민하였습니다. do-catch 구문을 사용할때, do구문에 try를 한번만 사용하는 코드를 주로사용해왔고 try구문을 두번 처리해도 문제가 없는건지 고민하였습니다.

###  ⚒️ 해결방법
```swift
mutating func makeJuice(_ juiceMenu: JuiceMenu) -> Bool {
    do {
        try checkCurrentStock(juiceMenu)
        for (fruit, stock) in receipe {
            try fruitStore.subtractStock(of: fruit, amount: stock)
        }
        return true
    } catch JuiceMakerError.outOfStock {
        print("재고가 부족합니다.")
        return false
    } catch JuiceMakerError.fruitError {
        print("과일 선택 오류입니다.")
        return false
    } catch {
        print("알 수 없는 오류가 발생했습니다.")
        return false
    }
}
```
- 주디에게 질문을 남겼고 주디의 의견은 do-catch 구문에서 try를 두번 사용해도 문제가 없다는 내용이였습니다. 따라서 1번문제에 대한 트러블 슈팅을 하면서 do-catch 구문에 try 를 두번 넣어주도록 오류를 처리하였습니다.


### 3. 초기재고 설정하는 법
- 미션 항목에 초기재고가 10개로 정해져 있었고 이부분을 코드로 표현할때 어떤식으로 표현하면 좋을지 고민했습니다. 10이란 값을 처음부터 입력할지 아니면 ```initialStock```이란 변수를 생성하여 변수를 넣어줄지 고민하였습니다. 

###  ⚒️ 해결방법

수정전 코드
```swift
class FruitStore {
    var fruitStocks: [Fruit: Int] = [:]
    var initialStock: Int = 10
    init() {
        Fruit.allCases.forEach { fruitStocks[$0] = initialStock }
    }

```
수정후 코드
```swift
class FruitStore {
    var fruitStocks: [Fruit: Int] = [:]
    
    init(initialStock: Int = 10) {
        Fruit.allCases.forEach { fruitStocks[$0] = initialStock }
    }
```
- 저희는 두번째 선택으로 값을 입력해주었는데 리뷰어 주디의 리뷰와 학습활동시간에 한 이니셜라이저에 매개변수로 값 지정해주는 방법을 생각하여 아래와 같이 해결하였습니다. 그로인해 이니셜라이저를 사용할때 초기재고 값을 변경할수있도록 구현했습니다.

### 4. singleton 사용

- 과일 재고는 여러곳에서 사용되기 때문에 singleton으로 하나만 만들어서 공용으로 사용하도록 구현했습니다. 처음엔 ```fruitStore```를 가지고 있는 ```JuiceMaker```를 singleton으로 구현하였으나 ```struct```타입으로 singleton 사용이 적합하지 않다고 생각하였습니다.

### ⚒️ 해결방법

- ```struct```는 값 타입이라 스택에 저장이 되고, 속성이 변하면 새로운 인스턴스가 복사되는 ```Copy On Write```특징이 있습니다. 따라서 하나를 공유한다는 개념의 singleton과는 맞지 않는다고 판단했고, ```fruitStore```를 singleton으로 정의하였습니다.

```swift
final class FruitStore {
    static let sharedFruitStore = FruitStore()
    
    var fruitStocks: [Fruit: Int] = [:]
    
    private init(initialStock: Int = 10) {
        Fruit.allCases.forEach { fruitStocks[$0] = initialStock }
    }
}
```
- ```FruitStore```는 ```class```로 주소값을 복사하기 때문에 주소를 갖는 새로운 변수가 스택에 생성되어도 본래의 인스턴스 주소로 접근하기 때문에 이런 문제가 발생하지 않기에 ```FruitStore```에 singleton 패턴을 적용하였습니다.
<br>

### 5. 오류처리시 타입캐스팅 적용 시도(오류 바인딩)
- 주디와 멘토링시간에 배운 내용을 같이 연습해보았습니다. 처음 구현했던 방법은 오류별로 따로 처리를 해주는식으로 구현하여 코드의 길이가 길어지는 문제가 있었습니다.

### ⚒️ 해결방법
```swift
private func completeOrder(of orderedJuice: JuiceMenu) {
        do {
            try juiceMaker.makeJuice(orderedJuice)
            updateStockLabel()
            showSuccessAlert(name: orderedJuice.name)
        } catch let juiceMakerError as JuiceMakerError {
            print(juiceMakerError.message)
            showFailAlert()
        } catch {
            print("알수없는 오류")
        }
    }
```
- ```juiceMakerError```상수를 통해 오류의 종류를 바인딩해주어 보다 깔끔하게 정리할 수 있었습니다.

## **[뷰컨트롤러 구현]**

### 1. 화면 전환 방식 선택
- 화면 전환 방식에 어떤 것을 선택할지 고민하였습니다.
- ViewController에서 직접 ViewController로 연결해주는 경우, Navigation Item이 표시되지 않아 어떤 방식으로 접근해야 하는지 고민하였습니다.

### ⚒️ 해결방법
- 스토리보드로 많은 것들이 구현되어 있는 상태였기에 스토리보드에서 사용이 용이한 Segue 방식을 선택하였습니다.
- Segue를 설정한 뒤 segueIdentifier를 이용한 performSegue와 dismiss 메서드를 활용하여 화면 전환을 구현해주었습니다. 
- Segue를 ViewController가 아닌 NavigationController로 설정해주어 문제를 해결하였습니다.
- ```Navigation controlle``` 가 두개로 나눠져 있는 이유에 대해 생각했고 저희가 내린 결론은 ```Navigation controller```는 화면의 흐름을 관리한다는 관점에서 봤을 때, 주문화면과 재고수정화면은 별개의 흐름으로 생각할 수 있었습니다. 현재는 하나의 화면밖에 없지만 만약 재고 수정화면에서 정보의 depth가 생긴다면 주문화면-재고수정화면-(추가화면) 처럼 하나의 흐름으로 이어지는게 부자연스럽다고 생각이 들어 이 둘을 별개로 나누어 접근하는 것이 적절하다고 생각했습니다.

### 2. 같은 액션을 취하는 버튼들을 하나로 합치기
- 각각의 버튼이 비슷한 액션을 취하는데, 이를 별개의 액션으로 설정해주니 비슷한 액션들을 전부 따로 설정해줘야해서 가독성 및 유지보수 측면에서 좋지 않다고 판단되었습니다.


### ⚒️ 해결방법
```swift
private func setButton(_ sender: UIButton) -> JuiceMenu? {
    guard let buttonTitle = sender.titleLabel?.text else {
        return nil
    }
    
    switch buttonTitle {
    case "딸기쥬스 주문":
        return JuiceMenu.strawberryJuice
    case "딸바쥬스 주문":
        return JuiceMenu.strawberryBananaJuice
    case "바나나쥬스 주문":
        return JuiceMenu.bananaJuice
    case "파인애플쥬스 주문":
        return JuiceMenu.pineappleJuice
    case "키위쥬스 주문":
        return JuiceMenu.kiwiJuice
    case "망고쥬스 주문":
        return JuiceMenu.mangoJuice
    case "망키쥬스 주문":
        return JuiceMenu.mangoKiwiJuice
    default:
        return nil
    }
}

private func completeOrder(of orderedJuice: JuiceMenu) {
    do {
        try juiceMaker.makeJuice(orderedJuice)
        updateStockLabel()
        successAlert(name: orderedJuice.name)
    } catch JuiceMakerError.outOfStock {
        print(JuiceMakerError.outOfStock.message)
        failAlert()
    } catch JuiceMakerError.fruitError {
        print(JuiceMakerError.fruitError.message)
    } catch {
        print("알 수 없는 오류가 발생했습니다.")
    }
}

@IBAction private func orderButtonTapped(_ sender: UIButton) {
    guard let orderedJuice = setButton(sender) else {
        return
    }
    completeOrder(of: orderedJuice)
}
```
- 주문하는 버튼에 적혀있는 buttonTitle 로 접근하여 쥬스의 종류를 확인하도록 구현했습니다. 그리고 ```orderButtonTapped``` 하나로 묶어서 버튼을 눌렀을 때, 쥬스의 종류를 확인하여 주문하도록 변경하여 코드의 길이를 줄일 수 있었습니다.

### 3. Navigation Item 글자 크기
- 스토리보드에서 Navigation Item 글자의 크기를 키우면 글자가 상단으로 커져서 center 정렬이 풀리는 현상이 발생했습니다.

### ⚒️ 해결방법
 ```swift
private func initTitle() {
        let navigationTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        navigationTitle.numberOfLines = 1
        navigationTitle.textAlignment = .center
        navigationTitle.font = UIFont.systemFont(ofSize: 30)
        navigationTitle.text = "재고 추가"
        self.navigationItem.titleView = navigationTitle
    }
```
 - Navigation controller의 title을 코드로 구현하여 storyboard 에서 다루기 어려웠던 부분을 해결할 수 있었습니다.

### 4. stepper 접근 방법

- stepper를 적용할때도 하나의 ```@IBAction```으로 묶어서 처리할 방법을 생각했습니다. 그런데 stepper를 누르면 과일의 종류도 확인이 되어야하고 그 과일의 재고가 보여지는 label도 확인이 되어야해서 어떻게 접근하는게 좋을지에 대한 고민을 했습니다.

### ⚒️ 해결방법
```swift
private func setStepper() {
        let stepperList: [UIStepper] = [strawberryStepper, bananaStepper, pineappleStepper, kiwiStepper, mangoStepper]
        
        for stepper in stepperList {
            guard let fruit = matchStepperAndFruit(stepper).fruit else { return }
            stepper.value = Double(juiceMaker.currentFruitStock(of: fruit))
        }
        
        stepperList.forEach {
            $0.autorepeat = true
            $0.maximumValue = 150
        }
    } 

private func matchStepperAndFruit(_ stepper: UIStepper) -> (fruit: Fruit?, label: UILabel?) {
        switch stepper {
        case strawberryStepper:
            return (.strawberry, strawberryStockLabel)
        case bananaStepper:
            return (.banana, bananaStockLabel)
        case pineappleStepper:
            return (.pineapple, pineappleStockLabel)
        case kiwiStepper:
            return (.kiwi, kiwiStockLabel)
        case mangoStepper:
            return (.mango, mangoStockLabel)
        default:
            return (nil, nil)
        }
    }

@IBAction private func stepperTapped(_ sender: UIStepper) {
        guard let fruit = matchStepperAndFruit(sender).fruit,
        let label = matchStepperAndFruit(sender).label else { return }
        label.text = Int(sender.value).description
        FruitStore.sharedFruitStore.fruitStocks[fruit] = Int(sender.value)
    }
```
- ```setStepper```를 이용하여 stepper와 현재 재고량을 설정해주었고, 이후 ```matchStepperAndFruit```을 이용하여 각 stepper가 눌렸을때 그에 해당하는 Fruit과 UILabel을 튜플타입으로 반환하여 하나의 메서드로 2개의 값에 접근할 수 있도록 연결해주었습니다.

### 5. 화면 전환 시 메서드 실행 방법
- modal 형태로 화면을 띄워주면 .fullScreen으로 설정해주지 않는 이상 ```viewWillAppear```를 사용할 수 없었습니다.

### ⚒️ 해결방법
```swift
// ManageStockViewController.swift
override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    NotificationCenter.default.post(name: NSNotification.Name("dismiss"), object: nil)
}

// OrderJuiceViewController.swift
override func viewDidLoad() {
    super.viewDidLoad()
    
    NotificationCenter.default.addObserver(self, selector: #selector(self.didDismissManageStockView(_:)), name: NSNotification.Name("dismiss"), object: nil)
}

@objc func didDismissManageStockView(_ notification: Notification) {
    self.updateStockLabel()
}
```
- modal 방식을 .fullScreen으로 수정해주면 간단하게 해결이 되겠지만 활동학습에서 배웠던 Notification을 사용해서 해결해보았습니다.
- ```viewDidDisapper```로 처음에 구현을 했는데, 화면이 닫히고 값이 변경되어 첫번째 화면으로 돌아왔을 때 딜레이가 생겼습니다. 그래서 닫히면서 값이 변경되는 ```viewWillDisappear``` 로 구현하였습니다.

### 6. delegate 패턴 적용 시도

- 화면간 데이터 전달시 처음엔 NotificationCenter를 이용하여 데이터를 전달하였습니다. 추후에 delegate 패턴 적용을 시도했는데, performSegue를 통해 ViewController가 아닌 NavigationController로 연결되어 ```segue.destination```으로 바로 접근할 수 없었습니다.

### ⚒️ 해결방법
```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destinationController = segue.destination as? UINavigationController,
        let targetController = destinationController.topViewController as? ManageStockViewController {
        targetController.delegate = self
        }
    }
```
- 위와 같이 UINavigationController의 topViewController에 접근하여 delegate와 연결해줄 수 있었습니다.


# 팀회고

## 개선하고 싶은 점

- 처음부터 로직을 구성할때 발생할 문제점을 미리 생각했더라면 조금 더 빠르게 가독성 좋은 코드로 구현이 가능했을 것 같아서 아쉽습니다. 다음 프로젝트때부턴 이 부분을 고려하면 좋을 것 같습니다.
- collection type에서 Dictionary를 사용했는데, Dictionary 타입의 특징과 개념을 정확히 이해하지 못한 상황에서 코드에 적용하는 부분이 힘들었습니다. 개념이해에 대한 중요성을 한번더 깨닫게 되었습니다.
- Label에 값을 업데이트 해주는 ```updateStockLabel``` 메서드도 IBOutlet Collection을 이용하여 한 번에 정의해줄 수 있을 것 같습니다.

## 잘한 점
- 처음 작성한 그라운드룰을 잘 지켰습니다.
- 서로의 의견을 집중해서 들었습니다.
- 미션수행에 앞서 학습해야하는 내용을 의존모둠과 같이 공부하였습니다.
- 프로젝트 남는 시간에 학습활동시간에 배운 개념들을 다양하게 적용시켜보았습니다.

## 팀원 서로 칭찬하기
- kaki가 리지에게<br>
    프로젝트 진행 중 막히는 부분이 생기면 여러가지 방법으로 해결할 방법을 고민하는 부분이 많은 도움이 되었습니다! 거듭된 고민에도 해결할 방법을 찾기 힘들때에는 다른 캠퍼들에게 먼저 다가가서 질문하는 자세도 보기 좋았어요🙂 <br>
- 리지가 kaki에게 <br>
앱을 만들어 본적이 없어서 이번 프로젝트 진행에 많은 어려움이 있었는데 카키가 본인이 알고있는 내용 + 공부한 내용을 저에게 아낌없이 나눠주었습니다. 또한 코드작성할때 이해 안되는 부분도 친절히 이해될때까지 설명해주었습니다. 감사합니다!! 👍

# 참고 링크
* [Swift 공식문서](https://www.swift.org/)
* [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
* [Initialization](https://docs.swift.org/swift-book/LanguageGuide/Initialization.html)
* [UINavigationController](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
* [Singleton](https://developer.apple.com/documentation/swift/managing-a-shared-resource-using-a-singleton)
* [Protocol-delegate](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)
* [View 생명주기](https://developer.apple.com/documentation/uikit/uiviewcontroller)
* [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)
* [Xcode 기능 - 경고창 띄우는 방법 / show alert view](https://fdee.tistory.com/entry/Xcode-기능-경고창-띄우는-방법-show-alert-view)
* [[iOS] 데이터 전달 방식 4가지 - property, delegate, closure, NotificationCenter](https://hellozo0.tistory.com/365)
* [Stepper 사용하기](https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=kkyy3402&logNo=220447786526)
* [Modal dismiss 한 후 CollectionView Reload 하기 (NotificationCenter)](https://velog.io/@minji0801/iOS-Swift-모달-dismiss한-후-CollectionView-데이터-Reload하기-NotificationCenter)
