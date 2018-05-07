//
//  Tabla.m
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Tabla.h"

@implementation Tabla

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *idceldas = @"celdaRestaurante";
    
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idceldas];
    if (celda == nil) {
        celda = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idceldas];
    }
    NSInteger fila = [indexPath row];
    Restaurante *res = [ _arrRestaurantes objectAtIndex:fila];
    [[celda textLabel]setText:[res nombre]];
    return celda;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrRestaurantes count];
}

-(Restaurante *) restauranteAt:(NSInteger)pos{
    return (Restaurante *)[_arrRestaurantes objectAtIndex:pos];
}
@end
