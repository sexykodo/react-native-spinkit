# react-native-spinkit-sk

Fork of react-native-spinkit

A collection of animated loading indicators   
React native port of [SpinKit](http://tobiasahlin.com/spinkit/).

## Preview
![](http://i.imgur.com/AwJsakU.gif)

## Getting started

`npm install react-native-spinkit-sk@latest --save`
For RN < 0.40 support, use react-native-spinkit@0.1.5

##### Automatically link the library
`react-native link`

> For RN projects < 0.29 link the library automatically using [RNPM](https://github.com/rnpm/rnpm)
`rnpm link react-native-spinkit-sk`

##### Manual linking - IOS
Follow the wiki available [here](https://github.com/maxs15/react-native-spinkit/wiki/Manual-linking---IOS)

##### Manual linking - Android
Follow the wiki available [here](https://github.com/maxs15/react-native-spinkit/wiki/Manual-linking---Android)

## Example
Check [index.ios.js](https://github.com/maxs15/react-native-spinkit/blob/master/Example/index.ios.js) in the Example folder.

## Properties

| Prop  | Default  | Type | Description |
| :------------ |:---------------:| :---------------:| :-----|
| isVisible | `true` | `boolean` | Visibility of the spinner |
| color | #000000 | `string` | Color of the spinner  |
| size | 37 | `number` | Size of the spinner |
| type | Plane | `string` | Style type of the spinner |

### List of available types

- CircleFlip
- Bounce
- Wave
- WanderingCubes
- Pulse
- PulseRing
- ChasingDots
- ThreeBounce
- Circle
- 9CubeGrid
- WordPress (IOS only)
- FadingCircle
- FadingCircleAlt
- Arc (IOS only)
- ArcAlt (IOS only)

## Acknowledgements

IOS library: [SpinKit-ObjC](https://github.com/raymondjavaxx/SpinKit-ObjC)   
Android  library: [Android-SpinKit](https://github.com/ybq/Android-SpinKit)

## License

(c) 2016 Maxime Mezrahi, [MIT license](/LICENSE).
