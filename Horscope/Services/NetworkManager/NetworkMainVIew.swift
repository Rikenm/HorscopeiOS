//
//  NetworkMainVIew.swift
//  Horscope
//
//  Created by Biken Maharjan on 7/8/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import Foundation


extension NetworkManager {
    
    func fetchData(sign:String,completion:@escaping (Bool,Any?,Error?)->()){
  
        //URLSession
        let url = "http://sandipbgt.com/theastrologer/api/horoscope/\(sign)/today/"
        let urlResquest = URLRequest(url:URL(string:url)!)
        let task = URLSession.shared
        task.dataTask(with: urlResquest) { (data, response, error) in
            //
            do{
                guard  let data = data else {
                    return
                }
                let jsonData = try JSONDecoder().decode(Horoscope.self,from:data)
                completion(true,jsonData,nil)
            }catch {
                completion(false,nil,error)
                print("Goes fail")
            }
            //
        }.resume()
 
    }
    
    
    
    
 
    
}
