import Leaf
import Vapor

public func configure(_ app: Application) async throws {
    app.views.use(.leaf)
    try routes(app)
}
