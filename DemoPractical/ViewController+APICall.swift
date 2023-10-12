//
//  ViewController+APICall.swift
//  DemoPractical
//
//  Created by Dhruv Patel on 12/10/23.
//

import UIKit

// API Call
extension ViewController {
    func getDetails() {
        guard let baseURL =  URL(string:  "http://sd2.hiring.herokuapp.com/api/users?offset=10&limit=10") else { return  }
        var urlRequest = URLRequest(url: baseURL)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data) as! [String:Any]
                    print(json)
                    
                }
                catch(let error){
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}

