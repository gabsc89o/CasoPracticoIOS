//
//  Restaurante.m
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

-(id) initConNombre:(NSString *)nombre descripcion:(NSString *)descripcion longitud:(double)longitud latitud:(double)latitud{
    if (self = [super init]) {
        _nombre = nombre;
        _desc = descripcion;
        _lon = longitud;
        _lat = latitud;
    }
    return self;
}

@end
