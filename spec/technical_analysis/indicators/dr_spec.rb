require 'technical-analysis'
require 'spec_helper'

describe 'Indicators' do
  describe "DR" do
    input_data = SpecHelper.get_test_data(:close)
    indicator = TechnicalAnalysis::Dr

    describe 'Daily Return' do
      it 'Calculates Daily Return' do
        output = indicator.calculate(input_data, price_key: :close)
        normalized_output = output.map(&:to_hash)

        expected_output = [
          {:date_time=>"2019-01-09T00:00:00.000Z", :dr=>0.01698175787728018},
          {:date_time=>"2019-01-08T00:00:00.000Z", :dr=>0.019063070371121427},
          {:date_time=>"2019-01-07T00:00:00.000Z", :dr=>-0.0022258195062726527},
          {:date_time=>"2019-01-04T00:00:00.000Z", :dr=>0.042689359307968244},
          {:date_time=>"2019-01-03T00:00:00.000Z", :dr=>-0.09960739614994929},
          {:date_time=>"2019-01-02T00:00:00.000Z", :dr=>0.0011411182959297772},
          {:date_time=>"2018-12-31T00:00:00.000Z", :dr=>0.009665237150355388},
          {:date_time=>"2018-12-28T00:00:00.000Z", :dr=>0.00051232788984934},
          {:date_time=>"2018-12-27T00:00:00.000Z", :dr=>-0.006489788127505114},
          {:date_time=>"2018-12-26T00:00:00.000Z", :dr=>0.07042157597221266},
          {:date_time=>"2018-12-24T00:00:00.000Z", :dr=>-0.02587407947986453},
          {:date_time=>"2018-12-21T00:00:00.000Z", :dr=>-0.038895619460562525},
          {:date_time=>"2018-12-20T00:00:00.000Z", :dr=>-0.025234632357511222},
          {:date_time=>"2018-12-19T00:00:00.000Z", :dr=>-0.031191666164870235},
          {:date_time=>"2018-12-18T00:00:00.000Z", :dr=>0.01299255825301926},
          {:date_time=>"2018-12-17T00:00:00.000Z", :dr=>-0.009306260575296044},
          {:date_time=>"2018-12-14T00:00:00.000Z", :dr=>-0.031997660134542305},
          {:date_time=>"2018-12-13T00:00:00.000Z", :dr=>0.010940272028385545},
          {:date_time=>"2018-12-12T00:00:00.000Z", :dr=>0.0027871671707289103},
          {:date_time=>"2018-12-11T00:00:00.000Z", :dr=>-0.005719339622641484},
          {:date_time=>"2018-12-10T00:00:00.000Z", :dr=>0.006587928066947413},
          {:date_time=>"2018-12-07T00:00:00.000Z", :dr=>-0.03565705128205121},
          {:date_time=>"2018-12-06T00:00:00.000Z", :dr=>-0.011149470824608043},
          {:date_time=>"2018-12-04T00:00:00.000Z", :dr=>-0.043988745806730845},
          {:date_time=>"2018-12-03T00:00:00.000Z", :dr=>0.03494232276850706},
          {:date_time=>"2018-11-30T00:00:00.000Z", :dr=>-0.005402394876079075},
          {:date_time=>"2018-11-29T00:00:00.000Z", :dr=>-0.0076821045650491415},
          {:date_time=>"2018-11-28T00:00:00.000Z", :dr=>0.038452708907254385},
          {:date_time=>"2018-11-27T00:00:00.000Z", :dr=>-0.0021761539342571856},
          {:date_time=>"2018-11-26T00:00:00.000Z", :dr=>0.013523710023797264},
          {:date_time=>"2018-11-23T00:00:00.000Z", :dr=>-0.025398800769317886},
          {:date_time=>"2018-11-21T00:00:00.000Z", :dr=>-0.0011300711944851605},
          {:date_time=>"2018-11-20T00:00:00.000Z", :dr=>-0.047777897342085596},
          {:date_time=>"2018-11-19T00:00:00.000Z", :dr=>-0.03963209838267967},
          {:date_time=>"2018-11-16T00:00:00.000Z", :dr=>0.011075701374013924},
          {:date_time=>"2018-11-15T00:00:00.000Z", :dr=>0.02467880085653107},
          {:date_time=>"2018-11-14T00:00:00.000Z", :dr=>-0.02824741195442948},
          {:date_time=>"2018-11-13T00:00:00.000Z", :dr=>-0.009991244785497289},
          {:date_time=>"2018-11-12T00:00:00.000Z", :dr=>-0.05037413801535684},
          {:date_time=>"2018-11-09T00:00:00.000Z", :dr=>-0.019281500311765565},
          {:date_time=>"2018-11-08T00:00:00.000Z", :dr=>-0.006954036675398845},
          {:date_time=>"2018-11-07T00:00:00.000Z", :dr=>0.030328311331403013},
          {:date_time=>"2018-11-06T00:00:00.000Z", :dr=>0.010814028473634663},
          {:date_time=>"2018-11-05T00:00:00.000Z", :dr=>-0.028388278388278287},
          {:date_time=>"2018-11-02T00:00:00.000Z", :dr=>-0.06633066330663306},
          {:date_time=>"2018-11-01T00:00:00.000Z", :dr=>0.015352279996344587},
          {:date_time=>"2018-10-31T00:00:00.000Z", :dr=>0.026066572902015972},
          {:date_time=>"2018-10-30T00:00:00.000Z", :dr=>0.004994346023369678},
          {:date_time=>"2018-10-29T00:00:00.000Z", :dr=>-0.018770226537216828},
          {:date_time=>"2018-10-26T00:00:00.000Z", :dr=>-0.015923566878980888},
          {:date_time=>"2018-10-25T00:00:00.000Z", :dr=>0.021897810218978186},
          {:date_time=>"2018-10-24T00:00:00.000Z", :dr=>-0.034301620796480026},
          {:date_time=>"2018-10-23T00:00:00.000Z", :dr=>0.009426693859052815},
          {:date_time=>"2018-10-22T00:00:00.000Z", :dr=>0.006110072500113972},
          {:date_time=>"2018-10-19T00:00:00.000Z", :dr=>0.015230071289695335},
          {:date_time=>"2018-10-18T00:00:00.000Z", :dr=>-0.023373570233735652},
          {:date_time=>"2018-10-17T00:00:00.000Z", :dr=>-0.004321404456448352},
          {:date_time=>"2018-10-16T00:00:00.000Z", :dr=>0.022037173352962736},
          {:date_time=>"2018-10-15T00:00:00.000Z", :dr=>-0.021385799828913643},
          {:date_time=>"2018-10-12T00:00:00.000Z", :dr=>0.035719281883889176},
          {:date_time=>"2018-10-11T00:00:00.000Z", :dr=>-0.00882787946015906},
          {:date_time=>"2018-10-10T00:00:00.000Z", :dr=>-0.046326089831180806},
          {:date_time=>"2018-10-09T00:00:00.000Z", :dr=>0.0}
        ]

        expect(normalized_output).to eq(expected_output)
      end

      it "Throws exception if not enough data" do
        expect {indicator.calculate([], price_key: :close)}.to raise_exception(TechnicalAnalysis::Validation::ValidationError)
      end

      it 'Returns the symbol' do
        indicator_symbol = indicator.indicator_symbol
        expect(indicator_symbol).to eq('dr')
      end

      it 'Returns the name' do
        indicator_name = indicator.indicator_name
        expect(indicator_name).to eq('Daily Return')
      end

      it 'Returns the valid options' do
        valid_options = indicator.valid_options
        expect(valid_options).to eq(%i(price_key))
      end

      it 'Validates options' do
        valid_options = { price_key: :close }
        options_validated = indicator.validate_options(valid_options)
        expect(options_validated).to eq(true)
      end

      it 'Throws exception for invalid options' do
        invalid_options = { test: 10 }
        expect { indicator.validate_options(invalid_options) }.to raise_exception(TechnicalAnalysis::Validation::ValidationError)
      end

      it 'Calculates minimum data size' do
        options = {}
        expect(indicator.min_data_size(options)).to eq(1)
      end
    end
  end
end
