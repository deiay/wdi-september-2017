submitted_email    = params[:email]
submitted_password = params[:password]

u = User.find_by(email: submitted_email)

password_digest = u.password_digest
salt = password_digest.split('|')[1]
stored_hashed_salted_password = password_digest.split('|')[0]

salted_hashed_submitted_password = hash_method(salt, submitted_password)

if stored_hashed_salted_password == salted_hashed_submitted_password
  # Access granted!
  # redirect to dashboard
else
  # Access denied!
  # render form again with error message
end
