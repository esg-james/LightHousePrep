typedef NS_ENUM(NSUInteger, MPIMyWonderfulType) {
    MPIMyWonderfulTypeOne = 1,
    MPIMyWonderfulTypeTwo = 2,
    MPIMyWonderfulTypeGreen = 3,
    MPIMyWonderfulTypeYellow = 4,
    MPIMyWonderfulTypePumpkin = 5
};

#import <Foundation/Foundation.h>

@interface MyWonderfulType : NSObject

+ (NSString *)displayNameForWonderfulType:(MPIMyWonderfulType)wonderfulType;
+ (NSString *)urlForWonderfulType:(MPIMyWonderfulType)wonderfulType;

@end
