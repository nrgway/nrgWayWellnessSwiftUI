//
//  SpecificVideoPlayerWithRelatedVideoViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/23/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//


import Combine
import SwiftUI
import Alamofire

final class SpecificVideoPlayerWithRelatedVideoViewModel: ObservableObject {
    
    @Published private(set) var state = State.loading
    @Published var video: VideoEntity? = nil
    @Published var latestVideos: [LatestVideoEntity] = []
    private var specificVideoAnyCancellable: AnyCancellable?
    private var videosAnyCancellable: AnyCancellable?
    private var bag = Set<AnyCancellable>()
    @Published var resSingleVideo: ResSingleVideo?
    
    
    var statusCode = Int.zero
    
    func handleResponse<T: Decodable>(_ response: DataResponse<T, AFError>) -> Any? {
        switch response.result {
        case .success:
            return response.value
        case .failure:
            return nil
        }
    }
    
    
    func getLatestVideo()  {
        getRandomDog()
        videosAnyCancellable = WebAPI.getListOfvideos()
            .receive(on: RunLoop.main)
            .map { $0.data.map(LatestVideoEntity.init)}
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  videolist in
                    print(videolist)
                    self.state = State.loaded
                    self.latestVideos = videolist
                  }
            )
        
        //        specificVideoAnyCancellable = WebAPI.getVideo(id:77)
        //
        //
        //            .map { ResSingleVideoEntity.init(singleVideoData: $0.data) }
        //            //.map(ResSingleVideoEntity.init(singleVideoData: data))
        //            .receive(on: RunLoop.main)
        //            .eraseToAnyPublisher()
        //            .sink(receiveCompletion: { _ in },
        //                  receiveValue: {  data in
        //                    print("---------------دیتا------------------")
        //                    print(data.video.urlLow )
        //
        //                    print("+++++++++++++++دیتا------------------")
        //
        //                    //data.relatedVideos
        //                    self.video = VideoEntity(video: data.video)
        //                    self.state = State.loaded
        //                  }
        //            )
        
        
    }
    
    func getRandomDog() {
         
        let url = "https://app.nrgway.com/api/v1/videos/77"
        let headers: HTTPHeaders = [
                    "Content-Type": "application/json",
                    "Accept": "application/json",
            "Authorization": WebAPI.token
                ]
        AF.request(url, method: .get,  headers: headers).responseDecodable { [weak self] (response: DataResponse<ResSingleVideo, AFError>) in
            guard let weakSelf = self else { return }
            
            guard let response = weakSelf.handleResponse(response) as? ResSingleVideo else {
                //weakSelf.  = false
                return
            }
            print("---------------دیتا------------------")
                                print(response)
        
            print("+++++++++++++++دیتا------------------")
            
            weakSelf.resSingleVideo = response
        }
    }
    
    
    deinit {
        bag.removeAll()
    }
    
    
}

// MARK: - Inner Types

extension SpecificVideoPlayerWithRelatedVideoViewModel {
    enum State {
        case idle
        case loading
        case loaded
        case error(Error)
    }
    
    
    
}

