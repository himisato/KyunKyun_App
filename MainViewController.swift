//
//  MainViewController.swift
//  KyunKyun_App
//
//  Created by Himi Sato on 2016/12/04.
//  Copyright © 2016 Himi Sato. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    /// alarm, voice, setting 画面を表示するためのコンテナビュー
    @IBOutlet var containerView: UIView!
    
    /// 3画面の切り替えに使うタブバー（最初の画面がタブバーの管理外のため、UITabBarController が使えないため、独自実装）
    @IBOutlet var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// タブバーの画像を、シルエット（テンプレート）表示ではなくオリジナルにしたいから、レンダリング
        renderTabBar()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// タブバーの画像をレンダリングする。
    private func renderTabBar() {
        
        /// 全てのタブバーアイテムの image と selectedImage を、オリジナル画像で再レンダリング
        for item in tabBar.items!{
            
            item.image = item.image?.withRenderingMode(.alwaysOriginal)
            item.selectedImage = item.selectedImage?.withRenderingMode(.alwaysOriginal)
        }
    }
    
    /// 渡されたビューコントローラーを、コンテナビューに表示する。
    func show(_ viewController: UIViewController){

        // すでにコンテナビューに表示されている View Controller と View を消去
        containerView.subviews.forEach {
            $0.removeFromSuperview()
        }
        
        childViewControllers.forEach{
            $0.removeFromParentViewController()
        }
        
        // 渡された View Controller とその view を、コンテナビューに表示（追加）
        addChildViewController(viewController)
        containerView.addSubview(viewController.view)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

/// MainViewController を UITabBarDelegate に適合させる。
extension MainViewController: UITabBarDelegate{
    
    /// タブバーが選択された時に呼ばれるデリゲートメソッド。
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        // 渡されてきた（選択された）タブバーの title から、適切なビューコントローラーを（ストーリーボード ID から）生成して、それを表示するための関数 (show) に渡して、表示する。
        switch item.title!{
            
        case "alarm":
            show(storyboard!.instantiateViewController(withIdentifier: "alarm"))
        case "voice":
            show(storyboard!.instantiateViewController(withIdentifier: "voice"))
        case "setting":
            show(storyboard!.instantiateViewController(withIdentifier: "setting"))
            
        default:
            // 想定外の title が渡ってきたら、強制終了
            fatalError("Invalid Tab Bar Title \(item.title!)")
        }
    }
}
