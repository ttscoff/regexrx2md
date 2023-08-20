title: Objective-C Properties

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^[ \t]*@property\s*(?:\(.*?\))?\s*(?<type>[^< ]+)\s*(?:<.*?>)?\s*(?:\s*\*\s*)?(?:\s*_\S+)?\s*(?<name>.*?);/
```

---

## Test string:

```text
//
//  BTBunch.h
//  Bunch
//
//  Created by Brett Terpstra on 6/4/19.
//  Copyright © 2019 Brett Terpstra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "BunchAudio.h"
#import "BTTaskController.h"

NS_ASSUME_NONNULL_BEGIN
@class BTTaskWindow;

@interface BTBunch : NSObject <NSUserNotificationCenterDelegate, NSCopying>

@property (atomic) NSArray * items;
@property (atomic) NSString * string;
@property (retain, atomic) NSDictionary * frontMatter;
@property (retain, atomic) NSDictionary * frontMatterOverrides;
@property (atomic) NSString * title;
@property (atomic) NSString * displayTitle;
@property (atomic) BTBunch * _Nullable parent;
@property (atomic) NSURL * url;
@property (atomic, retain) NSString * _Nullable snippets;

@property (nonatomic, assign) BOOL isRoot;
@property (nonatomic, assign) BOOL isOpen;
@property (nonatomic, assign) BOOL ignoreInSingleBunchMode;
@property (nonatomic, assign) BOOL onlyOpens;
@property (nonatomic, assign) BOOL alwaysQuitsApps;
@property (nonatomic, assign) BOOL needsRefresh;
@property (nonatomic, assign) BOOL forceOpenClose;
@property (nonatomic, retain) BTTaskController * tasks;

- (void)reload;
- (id)initWithURL:(NSURL *)url title:(NSString *)title configDir:(NSURL *)configDir;
- (id)initWithString:(NSString *)string title:(NSString *)title configDir:(NSURL *)configDir;
- (NSString *)frontMatterForKey:(NSString *)key;
- (void)updateFrontMatterWithDictionary:(NSDictionary *)dict2;
- (void)updateFrontMatterOverridesWithDictionary:(NSDictionary *)dict2;
- (NSArray *)getBunchItemsForURL:(NSURL *)url;
- (NSArray *)getBunchItemsForString:(NSString *)string;
- (NSArray *)appsNotIn:(BTBunch *)newBunch;
- (NSArray *)apps;
- (NSDictionary *)scripts;
- (void)open;
- (void)close;
- (void)quitAppsInArray:(NSArray *)appArray;
- (void)cancelAllTimers;
- (BOOL)hasActiveTimer;
- (NSString *)nextScheduledClose;
- (NSString *)nextScheduledOpen;
- (BOOL)scheduledOpen;
- (BOOL)scheduledClose;
@end

NS_ASSUME_NONNULL_END

```


