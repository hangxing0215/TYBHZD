//
//  NearHospitalViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "NearHospitalViewController.h"
#import <MapKit/MapKit.h>
#import "TRAnnotation.h"

@interface NearHospitalViewController ()<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (nonatomic,strong)CLLocationManager *manager;
@property (nonatomic ,strong)CLGeocoder *geocoder;


@end

@implementation NearHospitalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapView.delegate = self;
    
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
