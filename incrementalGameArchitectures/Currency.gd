class_name Currency 
extends Resource


var value: BigNumber = BigNumber.new()
var production: BigNumber = BigNumber.new()

func get_value():
	return value.to_scientific()

func calculate():
	# use the modifiers that affect this currency
	pass

# production is per second, so use delta
func produce(delta: float) -> void:
	value.plus_equals(production.multiply(delta))
	
func consume(number: BigNumber) -> void:
	value.minus_equals(number)
