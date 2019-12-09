# Specifications for the Rails Assessment

Specs:

- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (Category has_many Subjects)
- [x] Include at least one belongs_to relationship (Subjects belongs_to Category)
- [x] Include at least two has_many through relationships (User has_many Subjects through Votes, Subject has many Users through votes)
- [x] Include at least one many-to-many relationship (see above)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. category.title)
- [x] Include reasonable validations for simple model objects (see models)
- [x] Include a class level ActiveRecord scope method (Vote class, Vote.for_user, as seen on user show page at /users/:id)
- [x] Include signup (custom)
- [x] Include login (custom)
- [x] Include logout (custom)
- [x] Include third party signup/login (self written, standard omniauth using google-oauth_2)
- [x] Include nested resource show or index (users/:user_id/subjects)
- [x] Include nested resource "new" form (/subjects/:subject_id/votes/new)
- [x] Include form display of validation errors (subjects/new)

Confirm:

- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
