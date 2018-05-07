//
//  ViewController.h
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tabla.h"
#import "GestorRestaurante.h"

@interface ViewController : UIViewController<UITableViewDelegate>

{
    Tabla *_tablaRes;
    GestorRestaurante *_gestorRes;
}

@property IBOutlet UITableView *tvRestaurante;

@end

