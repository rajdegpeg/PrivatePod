//
//  FirstVC.swift
//  PrivatePod
//
//  Created by Raj Kadam on 06/07/22.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var testImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let imageStr = "https://d3ur2dp0uh3ite.cloudfront.net/session-banners/2022-06-16T20%3A51%3A14.499Z_6090f4ffa9369b680d1ad437_dog.png"
        testImage.setKFImage(imageString: imageStr, cornerRadius: 5)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


import Kingfisher

extension UIImageView {
    
    func setKFImage(imageString: String, cornerRadius: CGFloat = 0) {
        let url = URL(string: imageString)
        let processor = DownsamplingImageProcessor(size: self.bounds.size)
            |> RoundCornerImageProcessor(cornerRadius: cornerRadius)
        self.kf.indicatorType = .activity
        self.kf.setImage(
            with: url,
            placeholder: UIImage(named: ""),
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        {
            result in
            switch result {
            case .success(let value):
                print("Task done for: \(value.source.url?.absoluteString ?? "")")
            case .failure(let error):
                print("Job failed: \(error.localizedDescription)")
            }
        }
    }
}
