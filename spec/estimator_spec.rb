require File.expand_path '../spec_helper.rb', __FILE__

describe "Estimator" do
  describe "#actual" do
    context "it returns actual points taken" do
      let(:start_date) { Time.now }

      it "should return 4 points if it took 8 hours" do
        end_date = 8.hours.from_now
        expect(Estimator.actual(start_date, end_date)).to eq(4)
      end

      it "should return 8 points if it took 16 hours" do
        # 32 because it was started a 9am on day and finished at 5pm the next
        end_date = 32.hours.from_now
        expect(Estimator.actual(start_date, end_date)).to eq(8)
      end
    end
  end
end
