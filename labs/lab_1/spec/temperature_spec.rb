require './lib/temperature'

describe 'convert from celsius' do
  let(:c_to_c) { Temperature.new(20, 'C', 'C') }
  let(:c_to_k) { Temperature.new(20, 'C', 'K') }
  let(:c_to_f) { Temperature.new(20, 'C', 'F') }

  it 'from C to C' do
    c_to_c.convert
    expect(c_to_c.value).to eq 20
  end

  it 'from C to K' do
    c_to_k.convert
    expect(c_to_k.value.round(2)).to eq 293.15
  end

  it 'from C to F' do
    c_to_f.convert
    expect(c_to_f.value.round(2)).to eq 68
  end
end

describe 'convert from kelvin' do
  let(:k_to_k) { Temperature.new(300, 'K', 'K') }
  let(:k_to_c) { Temperature.new(300, 'K', 'C') }
  let(:k_to_f) { Temperature.new(300, 'K', 'F') }

  it 'from K to K' do
    k_to_k.convert
    expect(k_to_k.value).to eq 300
  end

  it 'from K to C' do
    k_to_c.convert
    expect(k_to_c.value.round(2)).to eq 26.85
  end

  it 'from K to F' do
    k_to_f.convert
    expect(k_to_f.value.round(2)).to eq 80.33
  end
end

describe 'convert from fahrenheit' do
  let(:f_to_f) { Temperature.new(70, 'F', 'F') }
  let(:f_to_c) { Temperature.new(70, 'F', 'C') }
  let(:f_to_k) { Temperature.new(70, 'F', 'K') }

  it 'from F to F' do
    f_to_f.convert
    expect(f_to_f.value).to eq 70
  end

  it 'from F to C' do
    f_to_c.convert
    expect(f_to_c.value.round(2)).to eq 21.11
  end

  it 'from F to K' do
    f_to_k.convert
    expect(f_to_k.value.round(2)).to eq 294.26
  end
end

describe 'incorrect input' do
  let(:i_to_c) { Temperature.new(10, 'I', 'C') }
  let(:i_to_k) { Temperature.new(10, 'I', 'K') }
  let(:i_to_f) { Temperature.new(10, 'I', 'F') }
  let(:c_to_i) { Temperature.new(10, 'C', 'I') }
  let(:k_to_i) { Temperature.new(10, 'K', 'I') }
  let(:f_to_i) { Temperature.new(10, 'F', 'I') }
  let(:i_to_i) { Temperature.new(10, 'I', 'I') }

  it 'from I to C' do
    expect(i_to_c.convert).to eq 'Incorrect input!'
  end

  it 'from I to K' do
    expect(i_to_k.convert).to eq 'Incorrect input!'
  end

  it 'from I to F' do
    expect(i_to_f.convert).to eq 'Incorrect input!'
  end

  it 'from C to I' do
    expect(c_to_i.convert).to eq 'Incorrect input!'
  end

  it 'from K to I' do
    expect(k_to_i.convert).to eq 'Incorrect input!'
  end

  it 'from F to I' do
    expect(f_to_i.convert).to eq 'Incorrect input!'
  end

  it 'from I to I' do
    expect(i_to_i.convert).to eq 'Incorrect input!'
  end
end
