require 'spec_helper'
require 'db/helper'
require 'byebug'

RSpec.describe DmFilter do
  let(:data) do
    Invoice.create(created_at: Time.current - 1.day)
    Invoice.create(created_at: Time.current)
    Invoice.create(created_at: Time.current)
    Invoice.create(created_at: Time.current - 1.month)
    Invoice.create(created_at: Time.current - 1.month)
  end

  context '#dm_get' do
    it 'returns all the records' do
      data
      expect(Invoice.dm_get(duration: 'all').count).to eq(5)
    end

    it 'returns today records' do
      expect(Invoice.dm_get(duration: 'today', from: (Time.current - 1.month), to: Time.current).count).to eq(2)
    end

    it 'returns yesterday records' do
      expect(Invoice.dm_get(duration: 'yesterday').count).to eq(1)
    end

    it 'returns this week records' do
      expect(Invoice.dm_get(duration: 'this_week').count).to eq(3)
    end

    it 'returns this month records' do
      expect(Invoice.dm_get(duration: 'this_month').count).to eq(3)
    end

    it 'returns custom date records' do
      expect(Invoice.dm_get(duration: 'custom', from: (Time.current - 1.day), to: Time.current).count).to eq(3)
      expect(Invoice.dm_get(duration: 'period', from: (Time.current - 1.month), to: Time.current).count).to eq(5)
    end
  end
end
