extends Node

const PRIME_1 := 39916801
const PRIME_2 := 151051
const PRIME_3 := 65537

var _seed := 0.0

func seed(value:int)->void:
  _seed = value


func rn(position:int)->int:
 var mixed := position
 mixed *= PRIME_1
 mixed += seed
 mixed += PRIME_2
 mixed ^= mixed
 return mixed
