burgers = {
		veggie_burger: {
			cheese_opt_1: 'pepper jack',
			cheese_opt_2: 'gouda',
			cheese_opt_3: 'swiss',
			bun: {
				opt_1: 'gluten free',
				opt_2: 'no bun'	
},
		meat_temp: [
		'rare', 'med', 'well'
		]
},
		cheese_burger: {
			chesse_opt_1: 'cheddar',
			cheese_opt_2: 'jack',
			cheese_opt_3: 'blue cheese',
			bun: {
				opt_1: 'gluten free',
				opt_2: 'no bun'	
	},
		meat_temp: [
		'rare', 'med', 'well'
		]
},
		special_burger: {
			topping_op_1: 'bacon',
			topping_op_2: 'egg',
			topping_op_3: 'avocado',
			type_of_meat: {
				opt_1: 'lamb',
				opt_2: 'bison',	
				opt_3: 'beef'
	},
		meat_temp: [
		'rare', 'med', 'well'
		]	
 	} 
  }  

p burgers[:cheese_burger][:meat_temp][2]

p burgers[:veggie_burger][:cheese_opt_2].upcase

p burgers[:special_burger][:type_of_meat][:opt_2]

p burgers[:cheese_burger][:meat_temp]

