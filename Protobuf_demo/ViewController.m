//
//  ViewController.m
//  Protobuf_demo
//
//  Created by dh on 2019/4/11.
//  Copyright © 2019 dh. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

/** 使用说明
 protoc --plugin=/usr/local/bin/protoc-gen-objc  --objc_out=./ person.proto
 
 在工程target->Build Phrases->Compile Sources->给Person.pbobjc.m设置-fno-objc-arc.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Person *person = [[Person alloc] init];
    person.name = @"qiao";
    person.age = 18;
    NSData *data = [person data];
    NSLog(@"\nname:%@,age:%d", person.name, person.age);//name:qiao,age:18
    
    NSDictionary *dict = @{@"name":@"qiao",@"age":@"18"};
    NSData *jd = [NSJSONSerialization dataWithJSONObject:dict options:0 error:nil];
    NSLog(@"data:%ld, jd: %lu",data.length, jd.length);//data:9, jd: 26
//    原文：https://blog.csdn.net/dangbai01_/article/details/81099001
}


@end
