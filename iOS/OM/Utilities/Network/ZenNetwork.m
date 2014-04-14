//
//  ZenNetwork.m
//  Sessions
//
//  Created by Felipe on 3/12/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenNetwork.h"
#import "ZenNetworkDelegate.h"

@interface ZenNetwork () <NSURLSessionDelegate, NSURLSessionDownloadDelegate> {
    NSURLSession *session;
    id caller;
}

@property (strong, nonatomic) NSURLSessionDownloadTask *downloadTask;
@property (strong, nonatomic) NSData *resumeData;
@end

@implementation ZenNetwork

- (id)initWithCaller: (id)theCaller {
    
    self = [self init];
    
    caller = theCaller;
    
    return self;
}


- (NSURLSession *)session {
    if (!session) {
        // Create Session Configuration
        NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        // Create Session
        session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:nil];
    }
    
    return session;
}

- (void)downloadTaskWithURLstring:(NSString*)url taskName:(NSString*)theTaskName
{
    
    // Create Download Task
    // NSURLSessionDownloadTask* adownloadTask;
    
    self.downloadTask = [self.session downloadTaskWithURL:[NSURL URLWithString:url]];
    
    // Resume Download Task
    [self.downloadTask resume];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didResumeAtOffset:(int64_t)fileOffset expectedTotalBytes:(int64_t)expectedTotalBytes {
    
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite {
    
    float progress = (double)totalBytesWritten / (double)totalBytesExpectedToWrite;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [caller progressUpdate:progress];
    });
    
}

- (void)URLSession:(NSURLSession *)aSession downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSData *data = [NSData dataWithContentsOfURL:location];
        //NSLog(@"location: %lld",downloadTask.);
        [caller downloadComplete:data];
    });
    
    // Invalidate Session
    //[aSession finishTasksAndInvalidate];
}

- (void)cancelDownload {
    
    if (!self.downloadTask)
        return;

    [self.downloadTask cancelByProducingResumeData:^(NSData *resumeData) {
        if (!resumeData)
            return;
    
        [self setResumeData:resumeData];
        [self setDownloadTask:nil];
    }];
}

- (void)resumeDownload {
    
    if (!self.resumeData)
        return;
    
     // Create Download Task
     self.downloadTask = [self.session downloadTaskWithResumeData:self.resumeData];
     
     // Resume Download Task
     [self.downloadTask resume];
     
     // Cleanup
     [self setResumeData:nil];
}

@end
