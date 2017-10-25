require 'skipioapimock'

class HomeController < ApplicationController
  before_action :fetch_contacts, only: [:index, :send_message]

  def index
  end

  def send_message
  end

  def fetch_contacts
    page = params[:page].present? ? params[:page] : 1
    contacts_per_page = 10

    result = SkipioApiMock.get_contacts(page, contacts_per_page)

    @meta = result['meta']
    data = result['data']

    @contacts = data.map do |contact|
      {first_name: contact['first_name'], last_name: contact['last_name'], id: contact['id']}
    end
  end
end
