User.delete_all()
(1..10).each do |id|
  User.create!(:username => "productionuser#{id}",
               :email => "productionuser#{id}@test.com",
               :name => "Production User #{id}")
end
