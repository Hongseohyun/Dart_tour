void main() {
    var name = 'seohyun';
    name = '서현'; //변수 수정은 같은 타입으로만 가능

    String name2 = 'sanggyu'; //명시적 선언도 가능, 상황에 맞게 사용

    //dynamic type
    //여러가지 타입을 가질 수 있는 변수에 쓰는 키워드
    //변수를 선언할 때 dynamic을 쓰거나 값을 지정하지 않으면 dynamic 타입을 가진다.
    dynamic fruit;
    fruit = 'apple';
    fruit = 12;
    fruit = true;
    
    if(fruit is String){
      fruit.isEmpty;
    }
    if(fruit is int){
      fruit.isEven;
    }

    //nullable variables
    //개발자가 null 값을 참조할 수 없도록 하는 것
    //String뒤에 ?를 붙여줌으로서 name이 String 또는 null이 될 수 있다고 명시해준 것
    //기본적으로 모든 변수는 non-nullable
    String? nico = 'nico';
    nico = null;
    nico?.isNotEmpty;
    
    //final variables
    //var대신 final로 변수를 만들게 되면 이 변수는 수정할 수 없게 된다.
    //자바스크립트의 const랑 비슷하다.
    final aaa ='aaa';

    //Late Variables
    //초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.
    //flutter로 data fecthing을 할 때 유용하다.
    //late 변수를 만들고, API에 요청을 보낸 뒤에 API에서 값을 보내주면 그 응답값을 late변수에 넣어 사용할 수 있다.
    late final String bbb;
    // do sth, go to api
    bbb = 'bbb';

    //Constant Variables
    //dart에서 const는 compile-time constant를 만들어준다.
    //const는 컴파일할 때 알고 있는 값을 사용해야 한다.
    //만약 어떤 값이 API로부터 오거나 사용자가 입력해야 하는 값이라면 final이나 var가 되어야 한다.
    const API = '121212';


    //final: 값을 재할당하지 못하는 변수를 만듦
    //dynamic type: 어떤 타입의 데이터가 들어올 지 모를 때 사용함
    //const: 컴파일 할 때 값을 알고 있는 변수
    //final: 런타임 중에 만들어질 수 있는 변수
    //late: final, var, String같은 것들 앞에 써줄 수 있는 수식어로서 어떤 데이터가 올 지 모를 때 사용한다.
}