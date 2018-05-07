//
//  Restaurante.h
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject

@property NSString *nombre;
@property NSString *desc;
@property double lon;
@property double lat;

-(id) initConNombre:(NSString *)nombre
        descripcion:(NSString *)descripcion
           longitud:(double)longitud
            latitud:(double)latitud;

@end
