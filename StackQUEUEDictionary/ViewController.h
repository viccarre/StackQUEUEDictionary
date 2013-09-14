//
//  ViewController.h
//  StackQUEUEDictionary
//
//  Created by @viccarre on 14/09/13.
//  Copyright (c) 2013 Victor Carreño. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
}
@property (weak, nonatomic) IBOutlet UITableView *Stack;
@property (nonatomic, strong) NSMutableArray *arrayStack;

@property (weak, nonatomic) IBOutlet UILabel *tamanoDelStack;
- (IBAction)pushStack:(id)sender;
- (IBAction)popStack:(id)sender;


@end
