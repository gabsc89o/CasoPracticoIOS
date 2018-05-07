//
//  SegundaVista.h
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Restaurante.h"

@interface SegundaVista : UIViewController

@property Restaurante *restau;
@property IBOutlet UILabel *nombre;
@property IBOutlet MKMapView *mapa;
@property IBOutlet UITextView *descrip2;

@end
