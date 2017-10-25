require 'skipioapimock'

class HomeController < ApplicationController
  before_action :fetch_contacts, only: [:index, :send_message]

  def index
  end

  def send_message
    if params[:message].blank?
      redirect_to root_path, notice: 'Message was blank.'
    else
      if SkipioApi.send_message(params[:id], params[:message]).code == 201
        redirect_to root_path, notice: 'Message was sent.'
      else
        redirect_to root_path, notice: 'Sorry there was an issue, message was not sent.'
      end
    end
  end

  private

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
