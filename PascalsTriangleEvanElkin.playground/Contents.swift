/*
 * Project 0: Pascal's Triangle
 * Evan Elkin eelkin@elon.edu
 */
func factorial( _ n: Int) -> Int{
    if n==0{
        return 1
    } else {
        return n*factorial(n - 1)
    }
}

func choose(n: Int, k: Int) -> Int{
    let num = factorial(n)
    let dem = factorial(k) * factorial(n - k)
    return num/dem
}

func triangle(n: Int){
    for i in 0...n{
        var k = 0
        var line = ""
        
        while k <= i{
            line += " \(choose(n: i, k: k))"
            k += 1
        }
        
        print(line)
    }
    
}

triangle(n: 4)
