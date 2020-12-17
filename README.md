# SNS_login
sns login 연습
> swift로 진행이 되었으며, pod 을 통해 실습을 진행하였다.


- 아래와 같이 pod file에 입력을 해주고, `pod install` 을 해준다.

`pod 'KakaoSDK'`

- 다음과 같이 부분적으로도 설치할 수 있다.
```
pod 'KakaoSDKCommon'  # 필수 요소를 담은 공통 모듈
pod 'KakaoSDKAuth'  # 카카오 로그인
pod 'KakaoSDKUser'  # 사용자 관리
```

## Kakao Login

> kakao login 구현은 크게 두가지로, 카카오어플을 통한 로그인 방법과 카카오 id,pw를 입력할 수 있는 방법이 있다.


- [x] kakaotalk 어플을 통한 로그인

  - <b>준비과정</b>
  
    - `AppDelegate.swift` 에 있는 `KakaoSDKCommon.initSDK(appKey: ApiKey.kakao)` 코드에서
      `ApiKey.kakao` 는 각자의 네이티브앱키를 지칭한다.
    - `ApiKey.kakao` 에 본인의 네이티브앱키를 그냥 넣어도 된다.
    
  - <b>화면구성과 카카오로그인</b>
  
    - 화면 구성 시 버튼을 만들어주고 `@IBAction func` 을 통해 구현 할 수 있다.
    - kakao api를 따라하면 쉽게 사용할 수 있다.  
  
- [ ] kakao 계정을 통한 로그인
