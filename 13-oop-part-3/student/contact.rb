class Contact

## CLASS VARIABLES

  @@contacts = []
  @@next_id = 1000



## CLASS METHODS

  def self.create(first_name,last_name = 'Aideyan',email_address = "#{first_name[0].downcase}#{last_name.downcase}@gmail.com",notes = 'N/A')
    new_contact = Contact.new(first_name,last_name,email_address,notes)
    @@contacts << new_contact
    new_contact
  end

  def initialize(first_name,last_name,email_address,notes = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email_address = email_address
    @notes = notes
    @id = @@next_id
    @@next_id += 1
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    #Return the specific instance being found
    # iterate through @@contacts, find the spefic contacts denoted by id and then return that INSTANCE
    # For each contact check if the id = the find ID
    # if it matches the find ID add it to a list
    # return the list
    @@contacts.each do |contact|
      if contact.id == id
        return contact
      end
    end

  end

#READERS
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email_address
    @email_address
  end

  def notes
    @notes
  end

  def id
    @id
  end

#WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email_address=(email_address)
    @email_address = email_address
  end

  def notes=(notes)
    @notes = notes
  end

#INSTANCE METHODS

def full_name
  "#{first_name} #{last_name}"
  "#{@first_name} #{@last_name}"
end

end


#dave = Contact.new('David','Aideyan','david@wealthsimple.com')
#clark = Contact.new('Clark','Kent','clark@dailyplanet.com','goes into the phone booth')
