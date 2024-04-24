// Create a collection for Bookings and insert documents
db.createCollection("Bookings")
db.Bookings.insertMany([
    { BookingsID: 1, BookingsRoomID: 1, TicketsNeeded: "Yes", BookingDesc: "How great was Rosalind Franklin?", Price: 12, NumberOfPeople: 62, Date: "4/02/2024", Time: "4.00pm", EndTime: "7.00pm", LectureID: 1 },
    { BookingsID: 2, BookingsRoomID: 2, TicketsNeeded: "No", BookingDesc: "Who is Augusta Ada King?", Price: 0, NumberOfPeople: 62, Date: "7/02/2024", Time: "4.00pm", EndTime: "5.00pm", LectureID: 2 },
    { BookingsID: 3, BookingsRoomID: 1, TicketsNeeded: "Yes", BookingDesc: "Who is Mary Cartwright?", Price: 43, NumberOfPeople: 12, Date: "3/03/2024", Time: "5.00pm", EndTime: "7:00pm", LectureID: 3 }
])