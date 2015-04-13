//function to take inputted numbers and add together all numbers leading up to it
//ex: input of 3, 1+2+3
//return: 6

//init variables/arrays
var storageArray = [Int]()
var finalNumber = 0
var startingNumber = 90
var endingNumber = 100
var arrayOne = [Int]()
var arrayTwo = [Int]()
var dictionary = [Int:Int]()
func calculateNumber(inputtedNumber:Int) -> Int
{
    //clear array for future use
    storageArray = [Int]()
    finalNumber = 0
    
    var i = 0
    while i <= inputtedNumber
    {
        storageArray.append(i)
        ++i
        
    }
    
    var a = 0
    while a < storageArray.count
    {
        if a == 0
        {
            finalNumber = storageArray[a]
        }
        else
        {
            finalNumber = finalNumber + storageArray[a]
        }
        ++a
    }
    
    
    
    
    
    return finalNumber
}









