//
//  ViewController.m
//  CasoPracticoIOS
//
//  Created by user138066 on 5/7/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"
#import "SegundaVista.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestorRes = [[GestorRestaurante alloc]init];
    _tablaRes = [[Tabla alloc]init];
    [_tvRestaurante setDataSource:_tablaRes];
    [_tvRestaurante setDelegate:self];
}

-(void) viewWillAppear:(BOOL)animated{
    [_tablaRes setArrRestaurantes:[_gestorRes listarRestaurante]];
    [_tvRestaurante reloadData];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Restaurante *r = [_tablaRes restauranteAt:[indexPath row]];
    [self performSegueWithIdentifier:@"verMapa" sender:r];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"verMapa"]) {
        if ([sender isKindOfClass:[Restaurante class]]) {
            SegundaVista *sv = (SegundaVista *)[segue destinationViewController];
            [sv setRestau:(Restaurante *)sender];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)volver:(UIStoryboardSegue *)segue{}

@end
