//
//  Tabla.h
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Restaurante.h"

@interface Tabla : NSObject<UITableViewDataSource>

@property NSArray *arrRestaurantes;

-(Restaurante *) restauranteAt:(NSInteger)pos;

@end
