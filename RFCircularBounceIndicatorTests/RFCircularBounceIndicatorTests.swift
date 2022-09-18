//
//  RFCircularBounceIndicatorTests.swift
//  RFCircularBounceIndicatorTests
//
//  Created by Rifat Firdaus on 18/09/22.
//

import XCTest
@testable import RFCircularBounceIndicator

class RFCircularBounceIndicatorTests: XCTestCase {
    
    // System Under Test
    var sut: RFCircularBounceIndicator!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = RFCircularBounceIndicator(circleColor: .white)
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testCreateCircularView() {
        // given
        //
        
        // when
        //
        
        // then
        XCTAssertEqual(sut.circleColor, UIColor.white)
    }
}
