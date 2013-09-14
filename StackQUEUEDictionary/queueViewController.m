//
//  queueViewController.m
//  StackQUEUEDictionary
//
//  Created by @viccarre on 14/09/13.
//  Copyright (c) 2013 Victor Carreño. All rights reserved.
//

#import "queueViewController.h"

@interface queueViewController ()

@end

@implementation queueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    numeroDelElemento = 0;
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)queue
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)queue numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _arrayQueue.count;
}
- (UITableViewCell *)tableView:(UITableView *)queue cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [queue dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *elemento = _arrayQueue[indexPath.row];
    cell.textLabel.text = elemento;
    return cell;
}

- (void)viewDidUnload {
    [self setQueue:nil];
    [self setNumberOfElements:nil];
    [super viewDidUnload];
}
- (IBAction)pushQueue:(id)sender {
    
    if(_arrayQueue.count < 10){
        
        
        
        NSString *str1 = @"Element ";
        str1 = [str1 stringByAppendingString:[NSString stringWithFormat:@"%d", numeroDelElemento]];
        
        
        if (!_arrayQueue) {
            _arrayQueue = [[NSMutableArray alloc] init];
        }
        [_arrayQueue insertObject:str1 atIndex:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.queue insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        
        numeroDelElemento += 1;
        
        _numberOfElements.text = [NSString stringWithFormat:@"%d", _arrayQueue.count];
    }
    
}

- (IBAction)popQueue:(id)sender {
    
    if(_arrayQueue.count != 0){
        
        [_arrayQueue removeObjectAtIndex:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[_arrayQueue count] inSection:0];
        [self.queue deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        _numberOfElements.text = [NSString stringWithFormat:@"%d", _arrayQueue.count];
    }
}
@end
