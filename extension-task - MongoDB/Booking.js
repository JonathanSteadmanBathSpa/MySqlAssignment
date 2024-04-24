//I just added new data into the database table and created table for the bookings room. :)
db.createCollection("BookingsRoom")
db.BookingsRoom.insertMany([
    { BookingsRoomID: 1, BookingRoom: "Lecture Room" },
    { BookingsRoomID: 2, BookingRoom: "Event Room" }
])
