OUTPUT = pio.OUTPUT
INPUT  = pio.INPUT
HIGH   = pio.pin.sethigh
LOW    = pio.pin.setlow


function sin(angle)
    return math.sin(angle)
end

function cos(angle)
    return math.cos(angle)
end

function tan(angle)
    return math.tan(angle)
end

function sqrt(num)
    return math.sqrt(num)
end

function pow(num, p)
    return math.pow(num, p)
end

function pinMode(pin, mode)
    pio.pin.setdir(mode, pin)
end

function digitalWrite(pin, val)
    val(pin)
end


function delay(time)
    tmr.delay(0 ,time*10*10*10)
end


function analogWrite(pwmid, val)
    pwm.setup(pwmid, 50000, val)
    pwm.start(pwmid)
end


function bitRead(x, n)
    if bit.isset(x, n) then
        return 1
    else
        return 0
    end
end


function bitWrite(x, n, b)
    if b == 0 then
        bit.clear(x, n)
    end
    if b == 1 then
        bit.set(x, n)
    end
end


function bitSet(x, n)
    bitWrite(x, n, 1)
end

function bitClear(x, n)
    bitWrite(x, n, 0)
end

function bit(n)
    return pow(n, 2)
end



