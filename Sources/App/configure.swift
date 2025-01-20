import Leaf
import Vapor
import Fluent

public func configure(_ app: Application) async throws {
    app.views.use(.leaf)
    app.migrations.add(CreateTax())
    try routes(app)
}
