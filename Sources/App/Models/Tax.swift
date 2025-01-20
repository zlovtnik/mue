import Fluent
import Vapor

final class Tax: Model, Content {
    static let schema = "taxes"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String

    @Field(key: "rate")
    var rate: Double

    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?

    init() { }

    init(id: UUID? = nil, name: String, rate: Double, createdAt: Date? = nil) {
        self.id = id
        self.name = name
        self.rate = rate
        self.createdAt = createdAt
    }
}
