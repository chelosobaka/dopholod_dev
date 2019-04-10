# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'creator@example.com', password: 'password', password_confirmation: 'password')

Cell.create!(title: "cell-2,94", price: "54807", temperature_range: "-30...+40", space: "2,94", dimensions: "1360х1360х2200", net_weight: "190", packed_sizes: "2200x1370x940")
Cell.create!(title: "cell-4,41", price: "65650", temperature_range: "-30...+40", space: "4,41", dimensions: "1960х1360х2200", net_weight: "247", packed_sizes: "2200x1370x1020")
Cell.create!(title: "cell-6,61", price: "76145", temperature_range: "-30...+40", space: "6,61", dimensions: "1960х1960х2200", net_weight: "311", packed_sizes: "2200x1370x1100")
Cell.create!(title: "cell-7,71", price: "85108", temperature_range: "-30...+40", space: "7,71", dimensions: "2260х1960х2200", net_weight: "343", packed_sizes: "2200x1370x1180")
Cell.create!(title: "cell-8,81", price: "89918", temperature_range: "-30...+40", space: "8,81", dimensions: "2560х1960х2200", net_weight: "376", packed_sizes: "2200x1370x1260")
Cell.create!(title: "cell-11,02", price: "103154", temperature_range: "-30...+40", space: "11,02", dimensions: "3160х1960х2200", net_weight: "441", packed_sizes: "2200x1370x1420")
Cell.create!(title: "cell-11,75", price: "104291", temperature_range: "-30...+40", space: "11,75", dimensions: "2560х2560х2200", net_weight: "451", packed_sizes: "2700x1370x1340")

Monoblock.create!(title: "mono-2,94", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,95", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,96", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,97", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,98", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,99", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,100", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,101", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")
Monoblock.create!(title: "mono-2,102", price: "54807", refrigerant: "R404A", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", dimensions: "2700x1370x1340", packed_sizes:"2700x1370x1340")

Split.create!(title: "split-2,94", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,91", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,92", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,93", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,95", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,96", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,97", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")
Split.create!(title: "split-2,98", price: "54807", temperature_condition: "-5...+5", voltage: "220/1/50", power_usage: "0.6", net_weight: "50", packed_sizes: "1360х1360х2200", inner_dimensions: "2700x1370x1340", external_dimensions: "2700x1370x1340")

