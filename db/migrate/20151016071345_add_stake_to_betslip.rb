class AddStakeToBetslip < ActiveRecord::Migration
  def change
    add_money :betslips, :stake, currency: { present: false}
  end
end
