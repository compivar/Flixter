//
//  DetailsViewController.m
//  Flixter
//
//  Created by isaacvarela on 6/17/22.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *posterImage;
@property (strong, nonatomic) IBOutlet UILabel *movieLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundPoster;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.movieLabel.text = self.detailDict[@"title"];
    self.descriptionLabel.text = self.detailDict[@"overview"];
    
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.detailDict[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    self.posterImage.image = nil;
    [self.posterImage setImageWithURL:posterURL];
    
    NSString *backgroundURLString = self.detailDict[@"backdrop_path"];
    NSString *fullBackgroundURLString = [baseURLString stringByAppendingString:backgroundURLString];
    NSURL *backgroundURL = [NSURL URLWithString:fullBackgroundURLString];
    self.backgroundPoster.image = nil;
    [self.backgroundPoster setImageWithURL:backgroundURL];
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
