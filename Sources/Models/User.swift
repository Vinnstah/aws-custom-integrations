import Foundation

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
