import Foundation

public struct Task: Identifiable, Codable, Equatable {
    public let id: UUID
    public let description: Description
    public let deadline: Deadline
    public let priority: Priority
    public let status: Status
    
    public enum Status: Equatable, Codable {
        case notStarted, inProgress, delayed, completed
    }
    
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
