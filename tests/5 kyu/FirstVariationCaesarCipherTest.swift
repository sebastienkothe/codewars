//
//  FirstVariationCaesarCipherTest.swift
//  tests
//
//  Created by Mosma on 08/09/2021.
//

import XCTest

class FirstVariationCaesarCipherTest: XCTestCase {
    
    func testExample1() {
        var u = "I should have known that you would have a perfect answer for me!!!"
        var sol = ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv", " lvz wp!!!"]
        dotest1(u, 1, sol)
        
        u = "O CAPTAIN! my Captain! our fearful trip is done;"
        sol = ["Y ONDIQZF!", " hu Azpucl", "r! vca qqn", "fukc mldl ", "gr eqqi;"]
        dotest1(u, 10, sol)
        
        u = "For you bouquets and ribbon d wreaths--for you the shores a-crowding;"
        sol = ["Pzd mdk tholqb", "rr bpg woijxx ", "p kgurlam--cmq", " zqx ynl brzdr", "g q-ukirzflf;"]
        dotest1(u, 10, sol)
        
        u = "Exult, O shores, and ring, O bells! But I, with mournful tread, Walk the deck my Captain lies, Fallen cold and dead. "
        sol = ["Ysqir, P vltxla, lzq gye", "y, J ycklt! Fzz Q, hugv ", "cfmkhaqi srfcg, Chtt etr", " sutc gt Zyotbkq qola, Q", "myztd uhfy xlc egdh. "]
        dotest1(u, 20, sol)
        
        u = "As human beings, when we encounter a challenge, we have freedom to choose how to react."
        sol = ["Un eslao eintna, h", "trb mv xhxkrlses d", " hnhtuoysr, mv auq", "a dqeffrq zv lrzaf", "s xfo nj oczcu."]
        dotest1(u, 20, sol)
        
        u = "Every decision that we make leads us down a different road.";
        sol = ["Fxhvd kmlsdu", "bb jysm ra k", "zkf oifjz dc", " pbkc r wcab", "bpdnu usfj."]
        dotest1(u, 1, sol)
        
        u = "How can we become the kind of people that face our fear and do it anyway?"
        sol = ["Iqz hgu fo nrqd", "cv mbz hgmd qi ", "ukvxuo fuoi wsv", "y krp ffcu ftk ", "my ug pdpots?"]
        dotest1(u, 1, sol)
        
        u = " uoxIirmoveNreefckgieaoiEcooqo"
        sol = [" xscOp", "zvygqA", "ftuwud", "adaxmh", "Edqrut"]
        dotest1(u, 2, sol)
        
        u = "uaoQop jx eh osr okaKv vzagzwpxagokBKriipmc U"
        sol = ["wdsVuw sh", " qu dii h", "evGs uzbi", "caudhoxuM", "Wewxfdu O"]
        dotest1(u, 2, sol)
        
        u = "kgpiqislyhvmffdzlyehjiIteAaaotcoapk bbMgaHlda"
        sol = ["mjtnwpaui", "shztutqdr", "ycffGseBc", "dsyiviyu ", "noAvqYdwu"]
        dotest1(u, 2, sol)
        
        u = "abcdefghjuty"
        sol = ["bdf", "hjl", "nps", "eek", ""]
        dotest1(u, 1, sol)
        
        u = "abcdefghjuty1234"
        sol = ["bdfh", "jlnp", "seek", "1234", ""]
        dotest1(u, 1, sol)
        
    }
    
    func testExample2() {
        var u = "I should have known that you would have a perfect answer for me!!!"
        var sol = ["J vltasl rlhr ", "zdfog odxr ypw", " atasl rlhr p ", "gwkzzyq zntyhv", " lvz wp!!!"]
        dotest2(sol, 1, u);
        
        u = "O CAPTAIN! my Captain! our fearful trip is done;"
        sol = ["Y ONDIQZF!", " hu Azpucl", "r! vca qqn", "fukc mldl ", "gr eqqi;"]
        dotest2(sol, 10, u)
        
        u = "For you bouquets and ribbon d wreaths--for you the shores a-crowding;"
        sol = ["Pzd mdk tholqb", "rr bpg woijxx ", "p kgurlam--cmq", " zqx ynl brzdr", "g q-ukirzflf;"]
        dotest2(sol, 10, u)
        
        u = "Exult, O shores, and ring, O bells! But I, with mournful tread, Walk the deck my Captain lies, Fallen cold and dead. "
        sol = ["Ysqir, P vltxla, lzq gye", "y, J ycklt! Fzz Q, hugv ", "cfmkhaqi srfcg, Chtt etr", " sutc gt Zyotbkq qola, Q", "myztd uhfy xlc egdh. "]
        dotest2(sol, 20, u)
        
        u = "As human beings, when we encounter a challenge, we have freedom to choose how to react."
        sol = ["Un eslao eintna, h", "trb mv xhxkrlses d", " hnhtuoysr, mv auq", "a dqeffrq zv lrzaf", "s xfo nj oczcu."]
        dotest2(sol, 20, u)
        
        u = "Every decision that we make leads us down a different road."
        sol = ["Fxhvd kmlsdu", "bb jysm ra k", "zkf oifjz dc", " pbkc r wcab", "bpdnu usfj."]
        dotest2(sol, 1, u)
    }
    
    func testExample3() {
        var u = "If the shift is initially 1, the first character of the message to be encoded will be shifted by 1, the second character will be shifted by 2, etc..."
        dotest3(u, 1)
        
        u = "How can we become the kind of people that face our fear and do it anyway?"
        dotest3(u, 15)
    }
    
    // MARK: - Private methods
    private func dotest1(_ s: String, _ shift: Int, _ expected: [String]) {
        XCTAssertEqual(movingShift(s, shift), expected, "should return \(expected)")
    }
    
    private func dotest2(_ arr: [String], _ shift: Int, _ expected: String) {
        XCTAssertTrue(demovingShift(arr, shift) == expected, "should return \(expected)")
    }
    
    private func dotest3(_ s: String, _ shift: Int) {
        XCTAssertTrue(demovingShift(movingShift(s, shift), shift) == s, "should return \(s)")
    }
}
