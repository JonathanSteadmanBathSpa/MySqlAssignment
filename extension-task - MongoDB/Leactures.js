//Insert Many will allow me to create more then one data into the database table.
db.Lectures.insertMany([
    
    { "LectureID": 1, "LectureName": "Tim Cook", "Age": 21 },

    { "LectureID": 2, "LectureName": "Harry Potter", "Age": 54 },

    { "LectureID": 3, "LectureName": "Bill Gates", "Age": 76 }

])