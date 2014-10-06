//
//  TagPlotTableViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "TagPlotTableViewController.h"

//ユーザーインクルード
#import "BrainStormingAppDelegate.h"

@interface TagPlotTableViewController ()

@end

@implementation TagPlotTableViewController
- (IBAction)ReturnBack:(UIBarButtonItem *)sender
{
        [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    BrainStormingAppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
    if(appDelegete.words_select == WordsA){
        return appDelegete.tagToiDrive.TagWordsA.count;
        
    }else if(appDelegete.words_select == WordsB){
        return appDelegete.tagToiDrive.TagWordsB.count;
        
    }else if(appDelegete.words_select == WordsC){
        return appDelegete.tagToiDrive.TagWordsC.count;
        
    }else if(appDelegete.words_select == WordsD){
        return appDelegete.tagToiDrive.TagWordsD.count;
        
    }else if(appDelegete.words_select == WordsE){
        return appDelegete.tagToiDrive.TagWordsE.count;
        
    }
    
    /*
    if(appDelegete.words_select == WordsA){
        
    }else if(appDelegete.words_select == WordsB){
        
    }else if(appDelegete.words_select == WordsC){
        
    }else if(appDelegete.words_select == WordsD){
        
    }else if(appDelegete.words_select == WordsE){
        
    }*/
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:@"WordCell" forIndexPath:indexPath];
    BrainStormingAppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
    if(appDelegete.words_select == WordsA){
        cell.textLabel.text = appDelegete.tagToiDrive.TagWordsA[indexPath.row];
      
        
    }else if(appDelegete.words_select == WordsB){
        cell.textLabel.text = appDelegete.tagToiDrive.TagWordsB[indexPath.row];
        
    }else if(appDelegete.words_select == WordsC){
        cell.textLabel.text = appDelegete.tagToiDrive.TagWordsC[indexPath.row];
        
    }else if(appDelegete.words_select == WordsD){
        cell.textLabel.text = appDelegete.tagToiDrive.TagWordsD[indexPath.row];
        
    }else if(appDelegete.words_select == WordsE){
        cell.textLabel.text = appDelegete.tagToiDrive.TagWordsE[indexPath.row];
        
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
