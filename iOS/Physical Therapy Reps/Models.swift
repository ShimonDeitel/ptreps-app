import Foundation

struct ExerciseItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var exerciseName: String
    var sets: String
    var reps: String
    var notes: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), exerciseName: String, sets: String, reps: String, notes: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.exerciseName = exerciseName
        self.sets = sets
        self.reps = reps
        self.notes = notes
    }

    static func blank() -> ExerciseItem {
        ExerciseItem(exerciseName: "", sets: "", reps: "", notes: "")
    }
}
