//
//  CountryContentView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/24/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import Combine
import EnvironmentOverrides

struct CountryContentView: View {
    
    private let container: DIContainer
    private let isRunningTests: Bool
    
    init(container: DIContainer, isRunningTests: Bool = ProcessInfo.processInfo.isRunningTests) {
        self.container = container
        self.isRunningTests = isRunningTests
    }
    
    var body: some View {
        Group {
            if isRunningTests {
                Text("Running unit tests")
            } else {
                OnboardingView()
                    .attachEnvironmentOverrides(onChange: onChangeHandler)
                    .inject(container)
            }
        }
    }
    
    var onChangeHandler: (EnvironmentValues.Diff) -> Void {
        return { diff in
            if !diff.isDisjoint(with: [.locale, .sizeCategory]) {
                self.container.appState[\.routing] = AppState.ViewRouting()
            }
        }
    }
}

// MARK: - Preview

#if DEBUG
struct CountryContentView_Previews: PreviewProvider {
    static var previews: some View {
        CountryContentView(container: .preview)
    }
}
#endif
