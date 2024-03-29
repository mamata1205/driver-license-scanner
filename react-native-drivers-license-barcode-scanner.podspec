require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = package['name']
  s.version = package['version']
  s.source_files = 'lib/ios/DriversLicenseBarcodeScanner/**/*.{h,m}'
  s.authors = {
    'Mamata Sahoo' => 'mamata.sahoo@icloud.com'
  }
  s.summary = 'React Native Component for Scanning Drivers Licenses'
  s.license = "MIT"
  s.homepage = "https://github.com/msahoo/react-native-drivers-license-barcode-scanner"

  s.source = {
    :git => "https://github.com/msahoo/react-native-drivers-license-barcode-scanner.git"
  }

  s.platform     = :ios, "8.0"

  s.dependency 'React'

  s.vendored_libraries = 'lib/ios/DriversLicenseBarcodeScanner/libBarcodeScanner.a', 'lib/ios/DriversLicenseBarcodeScanner/libDriverLicenseParser.a',
  s.libraries = "BarcodeScanner", "DriverLicenseParser"
end
