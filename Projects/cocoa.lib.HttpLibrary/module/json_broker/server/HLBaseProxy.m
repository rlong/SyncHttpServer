//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//

#import "HLBaseProxy.h"


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

@interface HLBaseProxy () 


// service
//id<Service> _service;
@property (nonatomic, retain) id<HLService> service;
//@synthesize service = _service;

@end 

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
#pragma mark -


@implementation HLBaseProxy


#pragma instance lifecycle  

-(id)initWithService:(id<HLService>)service {
    
    HLBaseProxy* answer = [super init];
    
    [answer setService:service];
    
    return answer;
}

-(void)dealloc {
    
	[self setService:nil];
	
	
}


#pragma mark fields


// service
//id<Service> _service;
//@property (nonatomic, retain) id<Service> service;
@synthesize service = _service;


@end
