//
//  Pinyinize_AppDelegate.h
//  Pinyinize
//
//  Created by Karan Misra on 08-7-8.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
@interface Pinyinizer : NSObject 
{

	
	
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator;
- (NSManagedObjectModel *)managedObjectModel;
- (NSManagedObjectContext *)managedObjectContext;

- (NSString*)convertToPinyin:(NSString*)input;

@end
