//
//  ZDDrawingView.m
//  DZ 24 Skutar Drawings
//
//  Created by mac on 01.04.17.
//  Copyright © 2017 Dima Zgera. All rights reserved.
//

#import "ZDDrawingView.h"

@implementation ZDDrawingView

-(CGFloat)number
{
    return (float)(arc4random() % 256) /255.f;
}

- (UIColor*)randomColor
{
    CGFloat c = [self number];
    CGFloat r = [self number];
    CGFloat g = [self number];
    
    return [UIColor colorWithRed:c green:r blue:g alpha:1.f];
}

#pragma mark - Drawindgs

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    for (int i = 0; i < 5; i++)
        //dobavili 5 raznux prymoygolnikov
    {
        NSInteger randonX = CGRectGetWidth(rect) - 100;
        NSInteger randonY = CGRectGetHeight(rect) - 100;
        
        CGSize size = CGSizeMake(100, 100);
        
        CGRect startRect = CGRectMake(arc4random() % randonX, arc4random() % randonY, size.width, size.height);
        
        startRect = CGRectIntegral(startRect);
        
        CGFloat offSet = CGRectGetWidth(startRect) / 3;
        
        //CREATE STAR
        
        CGContextSetFillColorWithColor(context, [self randomColor].CGColor);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        
        CGContextAddLineToPoint(context, CGRectGetMaxX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddLineToPoint(context, CGRectGetMidY(startRect) + offSet /2, CGRectGetMaxY(startRect));
        CGContextAddLineToPoint(context, CGRectGetMidX(startRect), CGRectGetMinY(startRect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(startRect) - offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddLineToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        
        CGContextFillPath(context);
        
        //arc
        CGContextSetFillColorWithColor(context, [self randomColor].CGColor);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddArc(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2, 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMaxX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddArc(context, CGRectGetMaxX(startRect), CGRectGetMidY(startRect) - offSet / 2, 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect) + offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddArc(context, CGRectGetMinX(startRect) + offSet / 2, CGRectGetMaxY(startRect), 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMidX(startRect), CGRectGetMinY(startRect));
        CGContextAddArc(context, CGRectGetMidX(startRect), CGRectGetMinY(startRect), 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMaxX(startRect) - offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddArc(context, CGRectGetMaxX(startRect) - offSet / 2, CGRectGetMidY(startRect), 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddArc(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2, 6, 0, 2 * M_PI, NO);
        
        CGContextFillPath(context);
        
        CGContextSetFillColorWithColor(context, [self randomColor].CGColor);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddArc(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2, 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMaxX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddArc(context, CGRectGetMaxX(startRect), CGRectGetMidY(startRect) - offSet / 2, 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect) + offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddArc(context, CGRectGetMinX(startRect) + offSet / 2, CGRectGetMaxY(startRect), 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMidX(startRect), CGRectGetMinY(startRect));
        CGContextAddArc(context, CGRectGetMidX(startRect), CGRectGetMinY(startRect), 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMaxX(startRect) - offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddArc(context, CGRectGetMaxX(startRect) - offSet / 2, CGRectGetMaxY(startRect), 6, 0, 2 * M_PI, NO);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddArc(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2, 6, 0, 2 * M_PI, NO);
        
        
        CGContextFillPath(context);
        
        CGContextSetFillColorWithColor(context, [self randomColor].CGColor);
        
        CGContextMoveToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        CGContextAddLineToPoint(context, CGRectGetMidX(startRect), CGRectGetMinY(startRect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(startRect), CGRectGetMinY(startRect) - offSet / 2);
        CGContextAddLineToPoint(context, CGRectGetMaxX(startRect) - offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddLineToPoint(context, CGRectGetMinX(startRect) + offSet / 2, CGRectGetMaxY(startRect));
        CGContextAddLineToPoint(context, CGRectGetMinX(startRect), CGRectGetMidY(startRect) - offSet / 2);
        
        CGContextSetLineWidth(context, 2.f);
        CGContextSetLineCap(context, kCALineCapRound);
        CGContextStrokePath(context);
        
        
    }
    
    CGRect rect1 = CGRectMake(100, 100, 200, 200);
    
    CGContextAddEllipseInRect(context, rect1);
    
    NSString* string = @"Thanks for lesson! \n:)";
    
    UIFont* font = [UIFont systemFontOfSize:16.f];
    NSShadow* shadow = [[NSShadow alloc]init];
    shadow.shadowOffset = CGSizeMake(1.f, 1.f);
    shadow.shadowColor = [UIColor whiteColor];
    shadow.shadowBlurRadius = 1;
    
    NSDictionary* atributes = [NSDictionary dictionaryWithObjectsAndKeys:
                               font,   NSFontAttributeName,
                               [self randomColor], NSForegroundColorAttributeName,
                               shadow, NSShadowAttributeName, nil];
    
    CGSize textSize = [string sizeWithAttributes:atributes];
    CGRect textRect = CGRectMake(CGRectGetMidX(rect1) - textSize.width / 2, CGRectGetMidY(rect1) - textSize.height / 2,textSize.width, textSize.height);
    
    textRect = CGRectIntegral(textRect);
    [string drawInRect:textRect withAttributes:atributes];
    
    CGContextStrokePath(context);
    
        
}





@end
