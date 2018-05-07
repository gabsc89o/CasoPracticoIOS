//
//  GestorRestaurante.m
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "GestorRestaurante.h"
#import "Restaurante.h"

@implementation GestorRestaurante

-(NSArray *) listarRestaurante{
    Restaurante *r1 = [[Restaurante alloc]initConNombre:@"EL Nacional" descripcion:@"Emblemático local con aire de antigua estación de tren que ofrece cuatro tipos de cocina en cuatro espacios." longitud:2.1682921 latitud: 41.3905396 identif:1];
    Restaurante *r2 = [[Restaurante alloc]initConNombre:@"9Reinas" descripcion:@"Recetas argentinas y carnes del mundo en elegante local con columnas de ladrillo visto y lámparas de diseño." longitud:2.164855 latitud: 41.394021 identif:2];
    Restaurante *r3 =[[Restaurante alloc]initConNombre:@"Bellavista del Jardín del Norte" descripcion:@"Singular restaurante de carta ecléctica disponible para eventos que recrea los coloridos lugares de un pueblo." longitud:2.155918 latitud: 41.393017 identif:3];
    Restaurante *r4 =[[Restaurante alloc]initConNombre:@"7 Portes" descripcion:@"Emblemático restaurante de principios del s. XIX que sirve cocina catalana y paellas en sus salones clásicos." longitud:2.1832806 latitud: 41.3821314 identif:4];
    Restaurante *r5=[[Restaurante alloc]initConNombre:@"Salamanca" descripcion:@"El restaurante emblemático de La Barceloneta desde hace más de 40 años. Disfruta de la mejor Cocina Mediterránea y de Mercado, nuestras famosas paellas, nuestros exquisitos jamones de Salamanca" longitud:2.1890153 latitud: 41.3786089 identif:5];
    Restaurante *r6=[[Restaurante alloc]initConNombre:@"Blavis" descripcion:@"Íntimo y acogedor restaurante con paredes de madera blanca que sirve cenas de cocina casera de mercado." longitud:2.1472076 latitud: 41.4033072 identif:6];
    NSArray *lista = [NSMutableArray arrayWithObjects:r1,r2,r3,r4,r5,r6,nil ];
    return lista;
}

@end
