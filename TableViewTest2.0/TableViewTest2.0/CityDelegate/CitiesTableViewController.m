//
//  CitiesTableViewController.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CitiesTableViewController.h"
#import "CityFormViewController.h"
#import "CityDetailsViewController.h"

@interface CitiesTableViewController () 

@property NSMutableArray *cities;
@property (nonatomic, weak) id  <NewCityFormDelegate>  delegate;

@end

@implementation CitiesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _cities = [NSMutableArray arrayWithObjects:@"San Francisco",@"Vancouver", nil];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source


- (void)addCity:(City *)city {
    if(city.city != nil)
    [self.cities addObject:city.city];
    [self.tableView reloadData];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender {
    if([segue.identifier isEqualToString: @"editCity"]) {
        
        CityDetailsViewController *cityVC = segue.destinationViewController;
        cityVC.theCity = sender.textLabel.text;
        cityVC.delegate = self;
    }
    else if([segue.identifier isEqualToString: @"newCity"]) {
        CityFormViewController *cityVC = segue.destinationViewController;
        cityVC.delegate = self;
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"city"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"city"];
    }
    cell.textLabel.text = [self.cities objectAtIndex:indexPath.row];
    return cell;
    
}

- (void)editCity:(City *)city {
    if(city != nil)
        [self.cities addObject:city.city];
    [self.tableView reloadData];
}
/*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 if segue.identifier == "addCity" {
 guard let newCityFormVC = segue.destination.children.first as? NewCityForm else {
 print("no form found")
 return
 }
 newCityFormVC.delegate = self
 } else {
 print("error")
 }
 }
 
 // MARK: - Table view data source
 
 override func numberOfSections(in tableView: UITableView) -> Int {
 return 1
 }
 
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return cities.count
 }
 
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
 cell.textLabel?.text = cities[indexPath.row].name
 return cell
 }*/

@end
