//
//  ViewController.swift
//  HW 3.2 Api
//
//  Created by Артём Потёмкин on 08.08.2023.
//

import UIKit

final class StartViewController: UIViewController {

    @IBAction func parsingButtonPressed() {
        fetchEmoji()
    }
}

// MARK: - Networking
extension StartViewController {
    private func fetchEmoji() {
        guard let url = URL(string: "https://emojihub.yurace.pro/api/random") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "no error description")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let emoji = try decoder.decode(Emoji.self, from: data)
                print(emoji)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
