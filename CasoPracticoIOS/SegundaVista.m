//
//  SegundaVista.m
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "SegundaVista.h"

@interface SegundaVista ()

@end

@implementation SegundaVista

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nombre.text = _restau.nombre;
    _descrip2.text = _restau.desc;
    CLLocationCoordinate2D location;
    location.latitude = _restau.lat;
    location.longitude =  _restau.lon ;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 500, 500);
    [_mapa setRegion:region animated:NO];
    CLLocationCoordinate2D location2 =CLLocationCoordinate2DMake(_restau.lat, _restau.lon);
    MKPointAnnotation *marcador = [[MKPointAnnotation alloc] init];
    [ marcador setCoordinate:location2];
    switch (_restau.ResId) {
        case 1:
            [ marcador setTitle:@"El Nacional" ];
            [ marcador setSubtitle:@"Cuatro tipos de cocina en cuatro espacios" ];
            break;
        case 2:
            [ marcador setTitle:@"9Reinas" ];
            [ marcador setSubtitle:@"Recetas argentinas y carnes del mundo" ];
            break;
        case 3:
            [ marcador setTitle:@"Bellavista del Jardín del Norte" ];
            [ marcador setSubtitle:@"Recrea los coloridos lugares de un pueblo" ];
            break;
        case 4:
            [ marcador setTitle:@"7 Portes" ];
            [ marcador setSubtitle:@"Cocina catalana y paellas" ];
            break;
        case 5:
            [ marcador setTitle:@"Salamanca" ];
            [ marcador setSubtitle:@"Cocina Mediterránea" ];
            break;
        case 6:
            [ marcador setTitle:@"Blavis" ];
            [ marcador setSubtitle:@"Cenas de cocina casera" ];
            break;
        default:
            break;
    }

    [ _mapa addAnnotation:marcador ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
