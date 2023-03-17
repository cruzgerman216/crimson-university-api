adminRole = Role.create(slug: "admin")
professorRole = Role.create(slug: "professor")
studentRole = Role.create(slug: "student")
staffRole = Role.create(slug: "staff")


# Admin
admin = User.create(first_name: "Amy", last_name: "Brown", email: "admin@admin.com", password: "password", phone: "123123123", roles: [adminRole])

# Professor
professor = User.create(first_name: "Brent", last_name: "Cruise", email: "professor@professor.com", password: "password", phone: "1312321", roles: [professorRole])
# Student
student = User.create(first_name: "James", last_name: "Smith", email: "student@student.com", password: "password", phone: "1212312", roles: [studentRole])

courseBioChemistry = Course.create(title: "Advance Topics in BioChemistry", description: "Areas regarding bio chemistry", professor_id: professor.id)

student.courses << courseBioChemistry
