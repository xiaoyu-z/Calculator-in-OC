#import <Foundation/Foundation.h>

@interface Caculator:NSObject
{
    double accumulator;
}
-(void)setAccumulator:(double)value;
-(double)accumulator;

-(void)add:(double)value;
-(void)subtract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;
@end

@implementation Caculator

-(double)accumulator{
    return accumulator;
}
-(void)setAccumulator:(double)value
{
    accumulator=value;
}

-(void)add:(double)value
{
    accumulator=accumulator+value;
}

-(void)subtract:(double)value
{
    accumulator=accumulator-value;
}

-(void)multiply:(double)value
{
    accumulator=accumulator*value;
}

-(void)divide:(double)value
{
    accumulator=accumulator/value;
}
@end
int main (int argc, const char *argv[])
{
    @autoreleasepool {
    double number;
    char operator;
    
    Caculator *cac=[[Caculator alloc]init];
    
    while(operator!='E'){
        NSLog(@"please input a number with the format 'number  operation'");
        scanf("%lf%c",&number,&operator);
        switch(operator){
            case 'S':
                [cac setAccumulator:number];
                break;
                
            case '+':
                [cac add:number];
                break;
                
            case '-':
                [cac subtract:number];
                break;
                
            case '*':
                [cac multiply:number];
                break;
                
            case '/':
                [cac divide:number];
                break;
                
                
        }
        NSLog(@"=%.5f",[cac accumulator]);
    }
    
    NSLog(@"End of Calculations");
    
        }
    return 0;
    
}
