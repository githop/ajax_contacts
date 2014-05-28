RESTful Routes:
# events (resource)
#
# READING
# VERB URL             ACTION  DESC
# GET /events            index   show a list of events
# GET /events/:id        show    show an individual event
#
# CREATING
# GET /events/new        new     show the form to create a new event
# POST /events           create  create a new event
#
# UPDATING
# GET /events/:id/edit   edit    show the form to edit an existing event
# PUT /events/:id        update  change the properties of an existing event
#
# DELETING
# DELETE /events/:id     delete  delete an existing event
#
# /app/views/events/new.erb
#                  edit.erb
#                  index.erb
#                  show.erb

# SESSIONS
# CREATING
# GET /sessions/new        new     show the form to create a new session (login)
# POST /sessions           create  create a new session
#
# DELETING
# DELETE /sessions         delete  delete an existing session (logout)
#
# /app/views/sessions/new.erb

# USERS
# READING
# VERB URL              ACTION  DESC
# GET /users            index   show a list of users
# GET /users/:id        show    show an individual user (profile page?)
#
# CREATING
# GET /users/new        new     show the form to create a new user (signup)
# POST /users           create  create a new user
#
# UPDATING
# GET /users/:id/edit   edit    show the form to edit an existing user
# PUT /users/:id        update  change the properties of an existing user
#
# DELETING
# DELETE /users/:id     delete  delete an existing user
#
# /app/views/users/new.erb
#                  edit.erb
#                  index.erb
#                  show.erb


