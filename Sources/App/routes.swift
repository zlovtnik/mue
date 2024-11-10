import Vapor

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

}
