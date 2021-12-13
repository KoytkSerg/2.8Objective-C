//
//  ViewController.m
//  HW2.8
//
//  Created by Sergii Kotyk on 29/11/21.

//Текущее значение текстфилда и все предыдущие, для которых была нажата кнопка. Разделитель — пробел. Например, в поле ввели «Никита», нажали кнопку — в лейбл выведется «Никита». В поле ввели «Антон» и нажали на кнопку — в лейбл выведется «Антон Никита», и так далее.


#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ViewController
NSString *temp = @"";

- (IBAction)showButton:(id)sender {
    temp = [[_nameTextField.text stringByAppendingString: @" "] stringByAppendingString:temp];
    _nameLabel.text = temp;
    _nameTextField.text = @"";

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
