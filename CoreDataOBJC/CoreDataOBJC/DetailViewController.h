//
//  DetailViewController.h
//  CoreDataOBJC
//
//  Created by JNYJ on 14-11-14.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface DetailViewController : UIViewController<NSFetchedResultsControllerDelegate,UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

