ActiveAdmin.register User, as: 'AdminUser' do

  index do
    column :id
    column "メールアドレス", :email
    column "権限", :role
    column :created_at
    column :updated_at
    actions
  end

end