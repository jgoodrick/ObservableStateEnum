
import SwiftUI
import ComposableArchitecture

@main
struct ObservableStateEnumApp: App {
    var body: some Scene {
        WindowGroup {
            EmptyView()
        }
    }
}

@Reducer
struct Manager: Reducer {
    
    @ObservableState
    enum State {
        case foo(bar: String)
    }
    
    enum Action {
        case foo
    }
        
    var body: some Reducer<State, Action> {
        EmptyReducer()
    }
}
