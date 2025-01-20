import Vapor
import Fluent

final class TaxesController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let taxes = routes.grouped("taxes")
        taxes.get(use: index)
        taxes.post(use: create)
        taxes.group(":taxID") { tax in
            tax.get(use: show)
            tax.put(use: update)
            tax.delete(use: delete)
        }
    }

    func index(req: Request) async throws -> [Tax] {
        try await Tax.query(on: req.db).all()
    }

    func create(req: Request) async throws -> Tax {
        let tax = try req.content.decode(Tax.self)
        try await tax.save(on: req.db)
        return tax
    }

    func show(req: Request) async throws -> Tax {
        guard let tax = try await Tax.find(req.parameters.get("taxID"), on: req.db) else {
            throw Abort(.notFound)
        }
        return tax
    }

    func update(req: Request) async throws -> HTTPStatus {
        let updatedTax = try req.content.decode(Tax.self)
        guard let tax = try await Tax.find(req.parameters.get("taxID"), on: req.db) else {
            throw Abort(.notFound)
        }
        tax.name = updatedTax.name
        tax.rate = updatedTax.rate
        try await tax.save(on: req.db)
        return .ok
    }

    func delete(req: Request) async throws -> HTTPStatus {
        guard let tax = try await Tax.find(req.parameters.get("taxID"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await tax.delete(on: req.db)
        return .noContent
    }
}
