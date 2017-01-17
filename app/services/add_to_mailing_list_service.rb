class AddToMailingListService
  attr_reader :email

  def initialize email
    @email = email
    @mailgun = Mailgun()
  end

  def process
    (add_to_list rescue nil)
  end

  def add_to_list
    @mailgun.list_members("everyone@monsieurslim.com").add(email)
  end
end