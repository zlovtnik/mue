# Mue 🚀

<div align="center">
  
  ![Swift](https://img.shields.io/badge/Swift-5.7-orange?style=for-the-badge&logo=swift)
  ![Vapor](https://img.shields.io/badge/Vapor-4.x-blue?style=for-the-badge)
  ![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
  
  <h3>A sleek, modern personal portfolio web application built with Swift and Vapor</h3>
</div>

## ✨ Features

- 🏠 **Dynamic Home Page** - Showcase your role and greetings
- 👤 **About Section** - Tell your story with customizable content
- 🛠️ **Skills Display** - Highlight your technical expertise
- 📂 **Projects Portfolio** - Showcase your work history and achievements
- 📬 **Contact Form** - Allow visitors to reach out to you
- 🌐 **API Endpoints** - RESTful API for taxes management
- 🐳 **Docker Support** - Easy deployment with Docker and docker-compose

## 🚀 Getting Started

### Prerequisites

- Swift 5.7 or higher
- macOS 12.0 or higher (for development)

### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/mue.git
   cd mue
   ```

2. Build and run the project
   ```bash
   swift build
   swift run
   ```

3. Access the application at `http://localhost:8080`

### Docker Deployment

```bash
docker-compose up -d
```

## 🏗️ Project Structure

```
mue/
├── Sources/
│   └── App/
│       ├── Controllers/   # API controllers
│       ├── Migrations/    # Database migrations
│       ├── Models/        # Data models
│       ├── configure.swift # App configuration
│       ├── cv.swift       # CV data structures
│       ├── entrypoint.swift # App entry point
│       └── routes.swift   # Route definitions
├── Resources/             # Static resources and templates
├── Public/                # Public assets
├── Tests/                 # Test cases
├── Dockerfile             # Docker configuration
└── docker-compose.yml     # Docker Compose configuration
```

## 🛠️ Built With

- [Swift](https://swift.org/) - The programming language
- [Vapor](https://vapor.codes/) - Web framework for Swift
- [Fluent](https://docs.vapor.codes/fluent/overview/) - ORM for Swift
- [Leaf](https://docs.vapor.codes/leaf/overview/) - Templating language

## 📝 Customization

Edit the JSON files in the `Resources` directory to customize your portfolio content:

- `en.json` - English language content

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- The Swift community
- Vapor team for their excellent framework
- All open-source contributors

---

<div align="center">
  <sub>Built with ❤️ by a Swift enthusiast</sub>
</div>
