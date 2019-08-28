# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!

class Contact
@@contacts = []
@@id = 1
  # This method should initialize the contact's attributes
  def initialize(full_name, email)
    @full_name = full_name
    @email = email
    @id = @@id

    @@id += 1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(full_name,email)
    contact = Contact.new(full_name,email)
    @@contacts << contact
    return contact
  end

  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |c|
      if c.id == id
        contact = c
      end
      return contact
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attributes)
    attributes.each do |key, value|
      @contact.key = value
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts = []
  end

  def id
    return @id
  end

  def full_name
    return @full_name
  end

  def full_name=(full_name)
    @full_name = full_name
  end

  def email
    return @email
  end

  def email=(email)
    @email = email
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @contact = nil
  end

  # Feel free to add other methods here, if you need them.

end
