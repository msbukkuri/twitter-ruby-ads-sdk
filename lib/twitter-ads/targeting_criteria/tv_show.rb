# frozen_string_literal: true
# Copyright (C) 2015 Twitter, Inc.

module TwitterAds
  class TVShow

    include TwitterAds::DSL
    include TwitterAds::Resource

    property :id, read_only: true
    property :name, read_only: true
    property :estimated_users, read_only: true
    property :genre, read_only: true

    RESOURCE_COLLECTION = '/0/targeting_criteria/tv_shows'.freeze # @api private

    def initialize(account)
      @account = account
      self
    end
  end
end
