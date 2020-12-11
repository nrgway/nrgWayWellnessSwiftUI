//
//  HomeViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/13/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//


import Combine
import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var state = State.idle
    
    @Published var instructors: [InstructorEntity] = []
    @Published var categories: [CategoryEntity] = []
    @Published var videos: [LatestVideoEntity] = []
    
    private var task: AnyCancellable?
    private var categoriesAnyCancellable: AnyCancellable?
    private var videosAnyCancellable: AnyCancellable?
    private var bag = Set<AnyCancellable>()
    
    
    deinit {
        bag.removeAll()
    }
    
    func getInstructors()  {
        
        
        //            let x = WebAPI.getInstructors()
        //                 .map { $0.data.map(InstructorEntity.init)}
        //                 .map(Event.onInstructorsLoaded)
        //                 .catch { Just(Event.onFailedToLoadInstructors($0)) }
        //                 .eraseToAnyPublisher()
        
        //        task = WebAPI.getInstructors()
        //            .map { $0.data.map(InstructorEntity.init)}
        //            .replaceError(with: [])
        //            .eraseToAnyPublisher()
        //            .receive(on: RunLoop.main)
        //            .assign(to: \HomeViewModel.instructors, on: self)
        //
        
        
        
        task = WebAPI.getInstructors()
            .receive(on: RunLoop.main)
            .map { $0.data.map(InstructorEntity.init)}
            .eraseToAnyPublisher()
            
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  instractorlist in
                    print(instractorlist)
                    
                    self.instructors = instractorlist
                  }
            )
        
        categoriesAnyCancellable = WebAPI.getCategories()
            .receive(on: RunLoop.main)
            .map { $0.data.map(CategoryEntity.init)}
            .eraseToAnyPublisher()            
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  categorylist in
                    print(categorylist)
                    
                    self.categories = categorylist
                  }
            )
        
        videosAnyCancellable = WebAPI.getListOfvideos()
            .receive(on: RunLoop.main)
            .map { $0.data.map(LatestVideoEntity.init)}
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  videolist in
                    print(videolist)
                    
                    self.videos = videolist
                  }
            )
        
        
        
        
        //
        //            let cancellable = members
        //                .zip(repos)
        //                .sink(receiveCompletion: { _ in },
        //                      receiveValue: { (members, repos) in
        //                        print(members, repos)
        //
        //                        instractorlist =
        //                            members.eraseToAnyPublisher()
        //                      }
        //                )
        //
        //            let token = Publishers.Zip(members, repos)
        //                .sink(receiveCompletion: { _ in },
        //                      receiveValue: { (members, repos) in
        //                        print(members, repos)
        //                        let y = members
        //                      })
        //
        //
        //            result = numbersPub
        //                .eraseToAnyPublisher()
        
        
        
    }
    
    
}

// MARK: - Inner Types

extension HomeViewModel {
    enum State {
        case idle
        case loading
        case instructorsLoaded([InstructorEntity])
        case error(Error)
    }
    
    
    
}

// MARK: - State Machine

extension HomeViewModel {
    
    
    
    
    
    
    //    func combinedApiRequests() -> AnyPublisher<ResInstructors<InstructorListData>, Error> {
    //
    //        let members = WebAPI.getInstructors()
    //
    //
    //         let repos = WebAPI.getInstructors()
    //
    //
    //       Publishers.Zip(members, repos)
    //                 .map { transform(res1: $0, res2: $1) }
    //                 .eraseToAnyPublisher()
    //    }
    
}

