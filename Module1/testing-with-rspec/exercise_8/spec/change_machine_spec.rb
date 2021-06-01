require 'spec_helper'
require './lib/change_machine'

describe ChangeMachine do
  it 'returns "Dispensed nickel" for 495 as cost and 500 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 495
    machine.paid 500

    result = machine.dispense_change

    expect(result).to eql 'Dispensed nickel'
  end

  it 'returns "Dispensed quarter" for 495 as cost and 500 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 175
    machine.paid 200

    result = machine.dispense_change

    expect(result).to eql 'Dispensed quarter'
  end

  it 'returns "Dispensed quarter" for 495 as cost and 500 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 144
    machine.paid 200

    result = machine.dispense_change

    expect(result).to eql 'Dispensed quarterDispensed quarterDispensed nickelDispensed penny'
  end

  it 'returns "Dispensed quarterDispensed quarterDispensed quarter" for 125 as cost and 200 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 125
    machine.paid 200

    result = machine.dispense_change

    expect(result).to eql 'Dispensed quarterDispensed quarterDispensed quarter'
  end

  it 'returns "do not have to dispense change" for 320 as cost and 320 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 320
    machine.paid 320

    result = machine.dispense_change

    expect(result).to eql 'do not have to dispense change'
  end

  it 'returns "Dispensed quarter" for 320 as cost and 320 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 450
    machine.paid 575

    result = machine.dispense_change

    expect(result).to eql 'Dispensed quarter'
  end

  it 'returns "do not have to dispense change" for 800 as cost and 600 paid as arguments' do
    machine = ChangeMachine.new

    machine.cost 800
    machine.paid 600

    result = machine.dispense_change

    expect(result).to eql 'do not have to dispense change'
  end
end
