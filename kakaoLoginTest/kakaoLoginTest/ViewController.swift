//
//  ViewController.swift
//  kakaoLoginTest
//
//  Created by miori Lee on 2020/12/17.
//

import UIKit
import KakaoSDKAuth
import KakaoSDKUser

class ViewController: UIViewController {

    @IBAction func signInKakao(_ sender: Any) {
        
        // MARK: - 카카오톡으로 로그인
        
        // 카카오톡 설치 여부 확인
        if (AuthApi.isKakaoTalkLoginAvailable()) {
            // 로그인
            // api 호출 결과를 클로저로 전달
            AuthApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    
                    // 예외처리 필요!
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

