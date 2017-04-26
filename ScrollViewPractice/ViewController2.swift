//
//  ViewController2.swift
//  ScrollViewPractice
//
//  Created by 倪僑德 on 2017/4/14.
//  Copyright © 2017年 Chiao. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //以下內容與VC的IBAction內容完全一制
        //這樣實體化的ＶＣ沒有init??
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let VC1 = sb.instantiateViewController(withIdentifier: "vc1")
        let VC2 = sb.instantiateViewController(withIdentifier: "vc2")
        let VC3 = sb.instantiateViewController(withIdentifier: "vc3")
        //已確認VC1/VC2有被確實創造並可直接present
        let VCArray = [VC1,VC2,VC3]
        //present(VCArray[0], animated: true, completion: nil)  //也已確認放到Array後也可正常present
        
        let VCScrollProductor = ProduceScrollViewWithVCArray(vcArrayInput: VCArray)
        VCScrollProductor.pageControlDotExist = true
        VCScrollProductor.currentPageIndicatorTintColorSetting = UIColor.black
        VCScrollProductor.otherPageIndicatorTintColorSetting = UIColor.lightGray
        let VCScroll = VCScrollProductor.pagingScrollingVC
        present(VCScroll!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
