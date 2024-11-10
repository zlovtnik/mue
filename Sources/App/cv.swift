import Foundation

struct Home: Codable {
    let tag: String
    let greetings: String
    let role: String
}

struct About: Codable {
    let tag: String
    let c1: String
    let c2: String
    let c3: String
}

struct Skills: Codable {
    let tag: String
    let title: String
    let l1: String
    let l2: String
    let l3: String
    let l4: String
    let l5: String
    let l6: String
    let l7: String
    let oracle: String
    let docker: String
    let kubernetes: String
    let spring: String
    let java: String
    let react: String
    let camel: String
    let oci: String
}

struct Projects: Codable {
    let tag: String
    let title: String
    let p2009: String
    let p2011: String
    let p2014: String
    let p2018: String
    let p2020: String
    let p2022: String
}

struct Contact: Codable {
    let tag: String
    let contactPhrase: String
    let label1: String
    let label2: String
    let label3: String
    let textAreaPlaceholder: String
    let buttonText: String
}

struct JSONData: Codable {
    let home: Home
    let about: About
    let skills: Skills
    let projects: Projects
    let contact: Contact
}

func loadJSON() -> JSONData? {
    let url = URL(fileURLWithPath: "Resources/en.json")

    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let jsonData = try decoder.decode(JSONData.self, from: data)
        return jsonData
    } catch {
        print("Failed to load or parse en.json file: \(error)")
        return nil
    }
}


func printHomeRole() -> String {
    if let jsonData = loadJSON() {
        return jsonData.home.role
    }
    return ""
}
