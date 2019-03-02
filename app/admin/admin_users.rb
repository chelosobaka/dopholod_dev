ActiveAdmin.register AdminUser do
  menu label: "Администраторы"
  permit_params :email, :password, :password_confirmation
  config.filters = false

  index :title => "Администраторы" do
    selectable_column
    id_column
    column :email
    column "Дата создания", :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password, label: 'Пароль'
      f.input :password_confirmation, label: 'Повторите пароль'
    end
    f.actions
  end

end
