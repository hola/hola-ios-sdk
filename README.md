# HolaSDK for iOS

## Integration
```
target 'MyApp' do
  pod 'HolaSDK', '0.1.4'
end
```

## Usage

Initialize before usage

```HolaExample.swift
import HolaSDK

// initialize only once
HolaSDK.shared.login(as: "<customer>")
```

Use unblocker to send HTTPS requests
```HolaExample.swift
import HolaSDK

// create URLSession (multiple sessions allowed)
let configuration = URLSessionConfiguration.default
configuration.XXX = YYY
let myGlobalSession = HolaSDK.shared.createUnblockerSession(conf: configuration)

// use standard URLSession API to make requests
let url = URL("https://example.com/demo/path")!
let task = myGlobalSession.dataTask(with: url) { (data, resp, error) in
    let status = (resp as? HTTPURLResponse)?.statusCode ?? 0
    let count = data?.count ?? 0
    let err = String(describing: error)
    print("response from \(url): status \(status) data \(count)B error \(err)")
}
task.resume()
```
