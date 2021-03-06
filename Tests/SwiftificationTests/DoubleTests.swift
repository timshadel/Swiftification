//
// Copyright (c) 2016 Hilton Campbell
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import XCTest
import Swiftification

class DoubleTests: XCTestCase {
    
    func testRandom() {
        for i in 0...500 {
            let d = Double(i)
            let random = Double.random(min: 0, max: d)
            XCTAssertTrue(random <= d && random >= 0)
        }
    }
    
    func testRandomWithDefaultMin() {
        for i in 0...500 {
            let d = Double(i)
            let random = Double.random(max: d)
            XCTAssertTrue(random <= d && random >= 0)
        }
    }
    
    func testRandomWithDefaultMax() {
        for i in 0...500 {
            let d = Double(i)
            let random = Double.random(min: d)
            XCTAssertTrue(random <= DBL_MAX && random >= d)
        }
    }
    
    func testRandomWithDefaults() {
        for _ in 0...500 {
            let random = Double.random()
            XCTAssertTrue(random <= DBL_MAX && random >= 0)
        }
    }
    
}
