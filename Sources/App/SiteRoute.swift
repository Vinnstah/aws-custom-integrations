import VaporRouting
import Foundation
import Models

public enum SiteRoute: Equatable {
    case integrations(IntegrationsRoute)
    case tasks(TasksRoute)
}

public enum IntegrationsRoute: Equatable {
    case create(Integration)
    case update
    case addField
    case removeField
    case delete
}

public enum TasksRoute: Equatable {
    case create(Task)
    case update(UUID, Task)
    case delete
    case read
}

public enum GoalRoute: Equatable {
    case create
    case addTask(Task)
    case update
    case delete
    case read
}

public enum NotesRoute: Equatable {
    case create
    case update
    case delete
    case read
}

public enum DashboardRoute: Equatable {
    case create
    case update
    case delete
    case read
}

public enum UsersRoute: Equatable {
    case create
    case login
    case delete
    case update
}
