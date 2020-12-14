//
//  SpecificVideoPlayerWithRelatedVideoViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/23/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//


import Combine
import SwiftUI

final class SpecificVideoPlayerWithRelatedVideoViewModel: ObservableObject {
    
    @Published private(set) var state = State.loading
    @Published var video: VideoEntity? = nil
    
    private var specificVideoAnyCancellable: AnyCancellable?
    
    private var bag = Set<AnyCancellable>()
    
    func getVideo()  {
        
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

