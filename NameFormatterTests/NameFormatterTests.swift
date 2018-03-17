// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Names

class NameFormatterTests: XCTestCase {
    
  func test_invertName_GivenAnEmptyString_ShouldReturnEmptyString() {
    let inputName = ""
    let expectedOutput = ""
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenASingleName_ShouldReturnASingleName() {
    let inputName = "name"
    let expectedOutput = "name"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_invertName_GivenASingleNameWithSpaces_ShouldReturnASingleName() {
    let inputName = " name "
    let expectedOutput = "name"
    
    let nameFormatter = NameFormatter(name: inputName)
    
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_returnLastFirst_GivenFirstLast() {
    let inputName = "Chris Dean"
    let expectedName = "Dean, Chris"
    
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedName)
  }
  
  func test_returnLastFirst_GivenFirstLastWithSpaces() {
    let inputName = " Chris Dean "
    let expectedName = "Dean, Chris"
    
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedName)
  }
  
  func test_emptyString_GivenASingleHonorific() {
    let inputName = "Dr. "
    let expectedName = ""
    
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedName)
  }
  
  func test_honorificFirstName_GivenHonorificFirstName() {
    let inputName = "Mr. Dean"
    let expectedOutput = "Mr. Dean"
    
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_honorificLastNameFirstname_GivenHonorificFirstNameLastName() {
    let inputName = "Mr. Chris Dean"
    let expectedOutput = "Mr. Dean, Chris"
    
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }
  
  func test_honorificLastNameFirstname_GivenHonorificFirstNameLastNameWithSpaces() {
    let inputName = " Mr. Chris Dean "
    let expectedOutput = "Mr. Dean, Chris"
    
    let nameFormatter = NameFormatter(name: inputName)
    XCTAssertEqual(nameFormatter.inverted(), expectedOutput)
  }

  
}






