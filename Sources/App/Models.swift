
import Foundation

public struct Task: Identifiable, Codable, Equatable {
    public let id: UUID
    public let description: Description
    public let deadline: Deadline
    public let priority: Priority
    
    public struct Description: Codable, Equatable {
        public let title: String
        public let description: String
        public let media: Media
        public let assignedUsers: AssignedUsers
        
        public struct Media: Equatable, Codable {
            public let images: [String]
        }
        
        public struct AssignedUsers: Equatable, Codable {
            public let owner: User
            public let helpers: [User]
        }
    }
    
    public struct Deadline: Equatable, Codable {
        public let createdAt: Date
        public let completeBy: Date
    }
    public enum Priority: Equatable, Codable {
        case low, medium, high, critical
    }
}

public struct User: Identifiable, Codable, Equatable {
    public let id: UUID
    public let privileges: Privileges
    public let credentials: Credentials
    
    public struct Credentials: Codable, Equatable {
        public let username: String
        public let email: String?
        public let password: String?
//        public var hashedPassword: String {
//            let salt = "apa"
//            let saltedPassword = password + salt
//            let utf8ConvertedPassword = saltedPassword.data(using: .utf8)!
//            let sha256password = Data(SHA256.hash(data: utf8ConvertedPassword))
//
//            return sha256password.base64EncodedString()
//        }
    }
    public enum Privileges: Equatable, Codable {
        case user, admin
    }
}

public struct Integration: Identifiable, Codable, Equatable {
    public var id: UUID
    public var name: String
    public var fields: [Field]
    public var url: URL
    
    public struct Field: Codable, Equatable {
        public var id: UUID
        public var name: String
        public var type: AnyCodable
    }
}
