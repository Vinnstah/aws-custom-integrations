import Vapor
import VaporRouting
import Models

public let router = OneOf {
    Route(.case(SiteRoute.integrations)) {
        integrationsRouter
    }
    Route(.case(SiteRoute.tasks)) {
        tasksRouter
    }
}

public let tasksRouter = OneOf {
    Route(.case(TasksRoute.create)) {
        Path { "tasks" }
        Method.post
        Body(.json(Task.self))
    }
    Route(.case(TasksRoute.update)) {
        Path { "tasks" ; UUID.parser() }
        Method.put
        Body(.json(Task.self))
    }
}

public let integrationsRouter = OneOf {
    Route(.case(IntegrationsRoute.create)) {
        Path { "create" }
        Method.post
        Body(.json(Integration.self))
    }
}



