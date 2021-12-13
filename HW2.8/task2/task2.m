//
//  task2.m
//  HW2.8
//
//  Created by Sergii Kotyk on 6/12/21.
//
//Значение 2 в степени числа из текстового поля, если в текстовое поле введено целое число. Если в текстовом поле не введено целое число, то «Введите целое число в строку».

#import "task2.h"

@interface Task2 ()

@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation Task2
- (IBAction)calculateButton:(id)sender {
    
    if ([_numberTextField.text  isEqual: @""]){
        _resultLabel.text = @"введите целое число";
    } else {
        if ([_numberTextField.text integerValue]) {
            int res = 1;
            int number = [_numberTextField.text intValue];
            for (int n = 0; n < number; n++) {
                res = res * 2;
            }
            NSLog (@"res is: %i", res);
            _resultLabel.text = [NSString stringWithFormat:@"%d",res];
        } else {
            _resultLabel.text = @"введите целое число";
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end

