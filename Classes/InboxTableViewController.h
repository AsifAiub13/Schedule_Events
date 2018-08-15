//
//  InboxTableViewController.h
//  SimpleEKDemo
//
//  Created by Asif on 7/31/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InboxTableViewController : UITableViewController
@property NSMutableArray *smsArr;
@property NSString *smsTitle;
@property NSString *smsDetails;
@end

NS_ASSUME_NONNULL_END
