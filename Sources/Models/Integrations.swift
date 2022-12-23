import Foundation

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
