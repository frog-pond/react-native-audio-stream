# react-native-audio-stream

## Getting started

`$ npm install react-native-audio-stream`

### Mostly automatic installation

`$ react-native link react-native-audio-stream`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-audio-stream` and add `RNAudioStream.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAudioStream.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.frogpondlabs.reactnative.RNAudioStreamPackage;` to the imports at the top of the file
  - Add `new RNAudioStreamPackage()` to the list returned by the `getPackages()` method

2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-audio-stream'
  	project(':react-native-audio-stream').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-audio-stream/android')
  	```

3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-audio-stream')
  	```

## Usage

```javascript
import * as Radio from 'react-native-audio-stream'

const url = 'http://example.com/audio/index.m3u8'
await Radio.play(url)
```
