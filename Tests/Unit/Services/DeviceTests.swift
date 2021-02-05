@testable import PushNotifications
import XCTest

class DeviceTests: XCTestCase {
    func testPersist() {
        let deviceStateStore = InstanceDeviceStateStore(TestHelper.instanceId)
        deviceStateStore.persistDeviceId("abcd")
        let deviceId = deviceStateStore.getDeviceId()

        XCTAssertNotNil(deviceId)
        XCTAssert("abcd" == deviceId)
    }
}
