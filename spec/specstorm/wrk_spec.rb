# frozen_string_literal: true

RSpec.describe Specstorm::Wrk do
  describe ".run" do
    it "sleeps for time" do
      expect(described_class).to receive(:sleep)
        .with(100)
        .and_return(true)

      described_class.run(duration: 100)
    end
  end
end
