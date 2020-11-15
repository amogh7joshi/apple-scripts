set choice to choose from list {"Celsius to Farenheit", "Celsius to Kelvin", "Kelvin to Farenheit", "Kelvin to Celsius", "Farenheit to Celsius", "Farenheit to Kelvin"}
set choice to choice as text

-- Rounds the numbers to a chosen number of decimal places.
on roundNum(num, decimalPlaces)
	set x to 10 ^ decimalPlaces
	(((num * x) + 0.5) div 1) / x
end roundNum

if choice is "Celsius to Farenheit" then
	set temp to text returned of (display dialog "Convert Celsius to Farenheit:" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion to roundNum((((temp) * 9 / 5) + 32), 2)
	display dialog "The temperature in Farenheit is " & conversion & "." buttons {"OK"} default button "OK"
else if choice is "Celsius to Kelvin" then
	set temp to text returned of (display dialog "Convert Celsius to Kelvin:" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion to roundNum((temp + 273.15), 2)
	display dialog "The temperature in Kelvin is " & conversion & "." buttons {"OK"} default button "OK"
else if choice is "Kelvin to Farenheit" then
	set temp to text returned of (display dialog "Convert Kelvin to Farenheit:" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion to roundNum((((temp - 273.15) * 9 / 5) + 32), 2)
	display dialog "The temperature in Farenheit is " & conversion & "." buttons {"OK"} default button "OK"
else if choice is "Kelvin to Celsius" then
	set temp to text returned of (display dialog "Convert Kelvin to Celsius:" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion to roundNum((temp + 273.15), 2)
	display dialog "The temperature in Celsius is " & conversion & "." buttons {"OK"} default button "OK"
else if choice is "Farenheit to Celsius" then
	set temp to text returned of (display dialog "Convert Farenheit to Celsius:" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion to roundNum(((temp - 32) * 5 / 9), 2)
	display dialog "The temperature in Celsius is " & conversion & "." buttons {"OK"} default button "OK"
else if choice is "Farenheit to Kelvin" then
	set temp to text returned of (display dialog "Convert Farenheit to Kelvin:" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion to roundNum((((temp - 32) * 5 / 9) + 273.15), 2)
	display dialog "The temperature in Kelvin is " & conversion & "." buttons {"OK"} default button "OK"
else
	tell me to error "Not a valid choice. Please try again."
end if

-- This can be run directly from the script editor. It converts temperatures on user input.
