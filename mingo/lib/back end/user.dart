// in this class the user input is stored and used to calculate the quantities

/* Standart values:
    Loose weight fast: 
      significantly less calorie intake than consumption
      0,8g protein per kg (vor 19-64 year old, older and younger ppl need more)
      0,5g healthy fats per kg weight

    Loose weight: 
      less calorie intake than consumption
      0,8g protein per kg (vor 19-64 year old, older and younger ppl need more)
      0,7g healthy fats per kg weight

    Maintain weight: 
      same calorie intake as consumption
      0,8g protein per kg (vor 19-64 year old, older and younger ppl need more)
      1g healthy fats per kg weight

    Gain weight: 
      higher calorie intake than consumption
      0,8g protein per kg (vor 19-64 year old, older and younger ppl need more)
      1g healthy fats per kg weight

    Build muscles: 
      same calorie intake as consumption
      1,6-2,0g protein per kg weight
      1g healthy fats per kg weight

  Formulas:

    Calories:
      basal metabolic rate
        man: 1kcal * 24 * weight
        woman: 0,9kcal * 24 * weight
      
      PAL-Value: 
        only sedentary/lying activities 1.2
        sedentary work (office job) with little physical activity in leisure time 1.4-1.5
        sedentary job and a small amount of sports in leisure time 1.6-1.7
        Mainly walking/standing job and moderate amount of sports in leisure time 1.8-1.9
        Physically demanding job with additional high level of activities in leisure time 2.0-2.4

      Daily calorie consumption:
        quantity = basal rate * PAL-Value


    Carbs: quantity = max calories per day - protein calories - fat calories

    Proteins: quantity = factor * weight

    Fats: quantity = factor * weight
   

   Final Formulas:

   Loose weight fast:
   Calories: maxCal = daily calorie consumption - 500
   Proteins: proteins = 0,8 * weight
   Fats: fats = 0,5 * weight
   Carbs: carbs = maxCal - protein - fats

   Loose weight:
   Calories: maxCal = daily calorie consumption - 300
   Proteins: proteins = 0,8 * weight
   Fats: fats = 0,7 * weight
   Carbs: carbs = maxCal - protein - fats

   Gain weight:
   Calories: maxCal = daily calorie consumption + 300
   Proteins: proteins = 0,8 * weight
   Fats: fats = 1 * weight
   Carbs: carbs = maxCal - protein - fats

   Maintain weight:
   Calories: maxCal = daily calorie consumption
   Proteins: proteins = 0,8 * weight
   Fats: fats = 1 * weight
   Carbs: carbs = maxCal - protein - fats

   Build muscles:
   Calories: maxCal = daily calorie consumption
   Proteins: proteins = 2 * weight
   Fats: fats = 1 * weight
   Carbs: carbs = maxCal - protein - fats
*/

class User {
  double weight = 0.0;
  String gender = "";
  int age = 0;
  double palValue = 0;
  String goal = "";
  double calories = 0.0;
  double proteins = 0.0;
  double fats = 0.0;
  double carbs = 0.0;

  void getCalories() {
    double bmr = 0; // basal metabloic rate
    if (gender == "male") {
      bmr = 1 * 24 * weight;
    } else {
      // female
      bmr = 0.9 * 24 * weight;
    }
    if (goal == "Loose weight fast") {
      calories = bmr * palValue - 500;
    } else if (goal == "Loose weight") {
      calories = bmr * palValue - 300;
    } else if (goal == "Gain weight") {
      calories = bmr * palValue + 300;
    } else if (goal == "Maintain weight") {
      calories = bmr * palValue;
    } else {
      // build muscles; I purposly did not combine it with the one above, so I can better keep track of what I have implemented an what not. You will find the same approach in the other methods
      calories = bmr * palValue;
    }
  }

  void getProteins() {
    if (goal == "Build Muscles") {
      proteins = 2 * weight;
    } else {
      if (age < 19 || age > 64) {
        proteins = 1.2 * weight;
      } else {
        proteins = 0.8 * weight;
      }
    }
  }

  void getFats() {
    if (goal == "Loose weight fast") {
      fats = 0.5 * weight;
    } else if (goal == "Loose weight") {
      fats = 0.7 * weight;
    } else if (goal == "Gain weight") {
      fats = 1 * weight;
    } else if (goal == "Maintain weight") {
      fats = 1 * weight;
    } else {
      fats = 1 * weight;
    }
  }

  void getCarbs() {
    carbs = calories - proteins - fats;
  }

  void calculateQuantities() {
    // this method makes it easier to calculate all the quantities in one go + it makes sure they are in the correct order, e.g you cannot calculate the carbs befor the fats and proteins.
    getCalories();
    getProteins();
    getFats();
    getCarbs();
  }
}

User user = new User();
