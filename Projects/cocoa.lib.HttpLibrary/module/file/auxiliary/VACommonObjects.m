//
//  ApplicationObjects.m
//  vlc_amigo
//
//  Created by Richard Long on 15/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "JBLog.h"
#import "JBLogHelper.h"
#import "JBJsonStringHandler.h"



//#import "VAApplicationDelegate.h"
#import "VACommonObjects.h"


@implementation VACommonObjects  {
    
}


static VPLocalStorage* _localStorage = nil;
static JBSimpleLogConsumer* _logConsumer= nil;
static JBSecurityConfiguration* _securityConfiguration = nil;



+(void)initialize {
}




+(VPLocalStorage*)localStorage {
    
    return _localStorage;
    
}


+(JBSimpleLogConsumer*)getLogConsumer {
    return _logConsumer;
}

+(void)setLogConsumer:(JBSimpleLogConsumer*)logConsumer {
    
    _logConsumer = logConsumer;
    
}





+(JBSecurityConfiguration*)securityConfiguration {
    
    return _securityConfiguration;
    
}

+(void)setSecurityConfiguration:(JBSecurityConfiguration*)securityConfiguration {
    
    
    _securityConfiguration = securityConfiguration;
    
    
    
}



+(void)setup {
    
    Log_enteredMethod();

    {
        
        JBSimpleLogConsumer* logConsumer = [JBLogHelper setupSimpleLogConsumer];
        [self setLogConsumer:logConsumer];
    }
    
    
    _localStorage = [[VPLocalStorage alloc] init];
//    [_localStorage setup];
}



@end
