# frozen_string_literal: true

RSpec.describe Specstorm::Wrk do
  describe ".run" do
    it "sleeps for time" do
      expect(described_class).to receive(:sleep)
        .with(1)
        .and_return(true)

      allow(Time).to receive(:now)
        .and_return(Time.now, Time.now, Time.now + 100)

      described_class.run(duration: 100)
    end
  end
end
