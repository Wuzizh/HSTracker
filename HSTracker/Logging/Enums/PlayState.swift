/*
 * This file is part of the HSTracker package.
 * (c) Benjamin Michotte <bmichotte@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * Created on 19/02/16.
 */

import Foundation

enum PlayState: Int {
    case invalid = 0,
    playing = 1,
    winning = 2,
    losing = 3,
    won = 4,
    lost = 5,
    tied = 6,
    disconnected = 7,
    conceded = 8

    init?(rawString: String) {
        for _enum in PlayState.allValues() {
            if "\(_enum)" == rawString.lowercased() {
                self = _enum
                return
            }
        }
        if let value = Int(rawString), let _enum = PlayState(rawValue: value) {
            self = _enum
            return
        }
        self = .invalid
    }

    static func allValues() -> [PlayState] {
        return [.invalid, .playing, .winning, .losing, .won, .lost, .tied, .disconnected, .conceded]
    }
}
