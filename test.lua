dofile("/semi/eluino.lua")

led = mbed.pio.P10

pinMode(led, OUTPUT)

while true do
    digitalWrite(led, HIGH)
    delay(1000)
    digitalWrite(led, LOW)
    delay(1000)
end