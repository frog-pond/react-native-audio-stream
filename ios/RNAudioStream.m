#import <React/RCTUtils.h>
#import "React/RCTLog.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <sys/socket.h>
#import <netinet/in.h>
#import "RNAudioStream.h"

@implementation RNAudioStream {
    MPMoviePlayerController *_streamPlayer;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(play: (NSString *) urlString
              resolver: (RCTPromiseResolveBlock) resolve
              rejecter: (RCTPromiseRejectBlock) reject) {

    NSURL *url = [NSURL URLWithString: urlString];

    if (url && url.scheme && url.host) {
        [UIApplication sharedApplication].idleTimerDisabled = YES;

        _streamPlayer = [[MPMoviePlayerController alloc] initWithContentURL: url];
        [_streamPlayer play];

        resolve(@true);
    } else {
        reject(@"invalid_url", @"The stream url is invalid.", nil);
    }
}

RCT_EXPORT_METHOD(pause: (RCTPromiseResolveBlock)resolve
               rejecter: (RCTPromiseRejectBlock)reject) {

    [_streamPlayer pause];
}

@end
