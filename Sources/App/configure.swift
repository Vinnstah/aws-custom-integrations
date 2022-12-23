import Vapor
import VaporRouting

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
//     app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    // register routes
    app.mount(router, use: siteHandler)
}

func siteHandler(
    request: Request,
    route: SiteRoute
) async throws -> any AsyncResponseEncodable {
    
    switch route {
    case .integrations(_):
        return "TEST"
    case let .tasks(.create(task)):
        return ["SUCCES": "YES"]
    case .tasks(_):
        return "TEST"
    }
}
