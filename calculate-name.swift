import Foundation

//init variables
var letterValues = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8, "i": 9, "j": 10, "k": 11, "l": 12, "m": 13, "n": 14, "o": 15, "p": 16, "q": 17, "r": 18, "s": 19, "t": 20, "u": 21, "v": 22, "w": 23, "x": 24, "y": 25, "z": 26]
var nameLetters = [Character]()
var characterValues = [Int]()
var finalNumber = 0
var name:String!
func calculateNameValue(inputName:String) -> Int
{
    //reset variables
    nameLetters = [Character]()
    characterValues = [Int]()
    finalNumber = 0
    //change input to lowercase to avoid uppercase letters
    name = inputName.lowercaseString
    
    // strip spaces
    name = name.stringByReplacingOccurrencesOfString(" ", withString: "")
    
    //check for abnormal characters
    let regex = NSRegularExpression(pattern: ".*[^a-z].*", options: nil, error: nil)!
    if regex.firstMatchInString(name, options: nil, range: NSMakeRange(0, name.utf16Count)) != nil
    {
        //abnormal character present, return 0 to indicate that it cannot be calculated
        return 0
        
    }
        //proceed with calculation
    else
    {
        //get individual characters
        for character in name
        {
            //append character to character array
            nameLetters.append(character)
            
            //get value of character
            var numberForName = letterValues[String(character)]
            
            //append value
            characterValues.append(numberForName!)
        }
        
        //declare incrementer
        var i = 0
        
        //declare variable for checking later on
        var firstTime = true
        while i < nameLetters.count
        {
            //if it's the first time looping:
            if firstTime
            {
                finalNumber = characterValues[i]
                
                //set to false so that it will go to else statement next time through
                firstTime = false
            }
            else
            {
                //take previous value and add it to the new one and reassign to variable
                finalNumber = finalNumber + characterValues[i]
            }
            
            ++i
        }
        
        return finalNumber
    }
}


