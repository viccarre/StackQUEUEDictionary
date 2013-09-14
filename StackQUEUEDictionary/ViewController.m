//
//  ViewController.m
//  StackQUEUEDictionary
//
//  Created by @viccarre on 14/09/13.
//  Copyright (c) 2013 Victor Carreño. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    _tamanoDelStack.text = [NSString stringWithFormat:@"%d", _arrayStack.count];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)stack
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)stack numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _arrayStack.count;
}
- (UITableViewCell *)tableView:(UITableView *)stack cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [stack dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *elemento = _arrayStack[indexPath.row];
    cell.textLabel.text = elemento;
    return cell;
}
- (IBAction)pushStack:(id)sender {
    
    if(_arrayStack.count < 10){
    
    NSString *str1 = @"Element ";
    str1 = [str1 stringByAppendingString:[NSString stringWithFormat:@"%d", _arrayStack.count]];
     
        
    if (!_arrayStack) {
        _arrayStack = [[NSMutableArray alloc] init];
    }
    [_arrayStack insertObject:str1 atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.Stack insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];

    _tamanoDelStack.text = [NSString stringWithFormat:@"%d", _arrayStack.count];
    }
}

- (IBAction)popStack:(id)sender {
    
    if(_arrayStack.count != 0){
    
    [_arrayStack removeObjectAtIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.Stack deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    _tamanoDelStack.text = [NSString stringWithFormat:@"%d", _arrayStack.count];
    }
}
@end
