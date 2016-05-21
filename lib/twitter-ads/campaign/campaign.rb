# frozen_string_literal: true
# Copyright (C) 2015 Twitter, Inc.

module TwitterAds
  class Campaign

    include TwitterAds::DSL
    include TwitterAds::Resource
    include TwitterAds::Persistence

    attr_reader :account

    property :id, read_only: true
    property :reasons_not_servable, read_only: true
    property :servable, read_only: true
    property :deleted, type: :bool, read_only: true
    property :created_at, type: :time, read_only: true
    property :updated_at, type: :time, read_only: true

    property :name
    property :funding_instrument_id
    property :end_time, type: :time
    property :start_time, type: :time
    property :paused, type: :bool
    property :currency
    property :standard_delivery
    property :daily_budget_amount_local_micro
    property :total_budget_amount_local_micro

    RESOURCE_COLLECTION = '/0/accounts/%{account_id}/campaigns'.freeze # @api private
    RESOURCE_STATS      = '/0/stats/accounts/%{account_id}/campaigns'.freeze # @api private
    RESOURCE            = '/0/accounts/%{account_id}/campaigns/%{id}'.freeze # @api private

    def initialize(account)
      @account = account
      self
    end

    # Allows the batch creation of new Campaigns with a single request
    #
    #
    # @param operation_type The enum values for the operation type are "Create", "Update", or "Delete"
    # @param params A JSON object containing all params for the [Campaign] object.
    #
    # @return [Array] An array of valid placement combinations.
    #
    # @see https://dev.twitter.com/ads/reference/post/batch/accounts/%3Aaccount_id/campaigns
    def batch()

    end

  end
end
