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

import Foundation

class NameFormatter {
  
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func inverted() -> String {
    
    if name == "" {
      return ""
    }

    let trimmedName = name.trimmingCharacters(in: .whitespaces)
    name = trimmedName
    
    var array = name.components(separatedBy: " ")
    
    if array.count == 1 && array[0].suffix(1) == "." {
      return ""
      
    } else if array[0].suffix(1) == "." && array.count == 2 {
      return name
      
    } else if array.count > 2 && array[0].suffix(1) == "." {
      
      let honorific = array[0]
      array.remove(at: 0)
      array.reverse()
      array[0] += ","
      let lastFirst = honorific + " " + array.joined(separator: " ")
      name = lastFirst
      
    } else if array.count > 1 {
      
      array.reverse()
      array[0] += ","
      let lastFirst = array.joined(separator: " ")
      name = lastFirst
      
    }
    
    return name
  }
  
}
