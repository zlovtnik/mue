import Vapor
import Fluent

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", ["title": "Hello Vapor!"])
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    app.post("test") { req async -> String in
        return "Hello, asdfasdfas!"
    }

    app.get("en") { req async -> String in
        return printHomeRole()
    }

    let taxesController = TaxesController()
    let taxes = app.grouped("taxes")
    taxes.get(use: taxesController.index)
    taxes.post(use: taxesController.create)
    taxes.group(":taxID") { tax in
        tax.get(use: taxesController.show)
        tax.put(use: taxesController.update)
        tax.delete(use: taxesController.delete)
    }
}
