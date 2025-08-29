class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :co #会社名
      t.string :name  #担当社名
      t.string :tel #携帯番号
      t.string :address #設置先住所
      t.string :email #メールアドレス
      t.string :which_one #希望の機種
      t.string :people #従業員数
      t.string :bring #1日何杯ほどの消費を想定していますか？
      t.string :period #いつまでに設置したいか
      t.string :remarks #その他ご要望
      t.timestamps
    end
  end
end
