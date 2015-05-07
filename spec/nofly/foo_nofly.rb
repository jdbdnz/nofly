class FooNofly < Nofly::EventLibrary
  
  # example of a nofly class

  def created
    # here is where we send out our notifications about the creation of a foo
    # mailer
    # in-app notification
    # push notification
  end

end