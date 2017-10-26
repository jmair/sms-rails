
module SkipioApi

  def self.get_contacts(page, per)
    path = 'https://stage.skipio.com/api/v2/contacts'
    options = { query: { token: ENV['SKIPIO_API_TOKEN'], page: page, per: per, verify: false}}

    HTTParty.get(path , options)
  end

  def self.send_message(id, message)
    path = 'https://stage.skipio.com/api/v2/messages'
    body = {
      recipients: ['contact-' + id],
      message: { body: message }
    }.to_json
    headers = { 'Content-Type': 'application/json', 'Accept': 'application/json' }
    options = { query: { token: ENV['SKIPIO_API_TOKEN'] }, body: body, headers: headers }

    HTTParty.post(path, options)
  end
end
