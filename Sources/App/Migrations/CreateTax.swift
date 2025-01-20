import Fluent

struct CreateTax: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("taxes")
            .id()
            .field("name", .string, .required)
            .field("rate", .double, .required)
            .field("created_at", .datetime)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("taxes").delete()
    }
}
