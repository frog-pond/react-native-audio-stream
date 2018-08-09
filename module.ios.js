// @flow

import { NativeModules } from 'react-native'
const RNAudioStream = NativeModules.RNAudioStream

export function play(url: string): Promise<boolean> {
    return RNAudioStream.play(url);
}
