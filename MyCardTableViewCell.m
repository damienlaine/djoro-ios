//
//  MyCardTableViewCell.m
//  
//
//  Created by Damien Tsenkoff on 16/09/2014.
//
//

#import "MyCardTableViewCell.h"

@implementation MyCardTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
    /*
     - (void)setFrame:(CGRect)frame {
     frame.origin.x += 25;
     frame.size.width -= 20;
     [super setFrame:frame];
     }
     */
    
}


@end

/*
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
 
 static NSString *CellIdentifier = @"ApplicationCell";
 
 ApplicationCell *cell = (ApplicationCell *)[[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 
 if (cell == nil)
 {
 cell = [[CompositeSubviewBasedApplicationCell alloc] initWithStyle:UITableViewCellStyleDefault
 reuseIdentifier:CellIdentifier];
 
 
 
 }
 return cell;
 }
 
 - (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
 {
 if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
 {
 cellContentView = [[CompositeSubviewBasedApplicationCellContentView alloc] initWithFrame:CGRectInset(self.contentView.bounds, 0.0, 1.0) cell:self];
 cellContentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
 cellContentView.contentMode = UIViewContentModeRedraw;
 
 //here i'm making the cells smaller in width than the rest of the tableView
 CGRect framme = cellContentView.frame;
 
 framme.size.width = framme.size.width-58;
 //set the left space
 framme.origin.x = framme.origin.x+29;
 
 [cellContentView setFrame:framme];
 [self.contentView addSubview:cellContentView];
 }
 return self;
 }

 
*/