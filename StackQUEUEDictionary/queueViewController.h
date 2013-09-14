//
//  queueViewController.h
//  StackQUEUEDictionary
//
//  Created by @viccarre on 14/09/13.
//  Copyright (c) 2013 Victor Carreño. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface queueViewController : UIViewController{
    int numeroDelElemento;
}
@property (weak, nonatomic) IBOutlet UITableView *queue;
@property (nonatomic, strong) NSMutableArray *arrayQueue;
- (IBAction)pushQueue:(id)sender;
- (IBAction)popQueue:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *numberOfElements;

@end
