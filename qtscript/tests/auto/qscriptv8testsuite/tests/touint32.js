// Copyright 2008 Google Inc. All Rights Reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
//     * Neither the name of Google Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

function ToUInt32(x) {
  return x >>> 0;
}

assertEquals(0, ToUInt32(0),         "0");
assertEquals(0, ToUInt32(-0),        "-0");
assertEquals(0, ToUInt32(Infinity),  "Infinity");
assertEquals(0, ToUInt32(-Infinity), "-Infinity");
assertEquals(0, ToUInt32(NaN),       "NaN");

assertEquals(0, ToUInt32(Number.MIN_VALUE),  "MIN");
assertEquals(0, ToUInt32(-Number.MIN_VALUE), "-MIN");
assertEquals(0, ToUInt32(0.1),               "0.1");
assertEquals(0, ToUInt32(-0.1),              "-0.1");
assertEquals(1, ToUInt32(1),                 "1");
assertEquals(1, ToUInt32(1.1),               "1.1");

assertEquals(4294967295, ToUInt32(-1),   "-1");
assertEquals(4294967295, ToUInt32(-1.1), "-1.1");

assertEquals(2147483647, ToUInt32(2147483647), "2147483647");
assertEquals(2147483648, ToUInt32(2147483648), "2147483648");
assertEquals(2147483649, ToUInt32(2147483649), "2147483649");

assertEquals(4294967295, ToUInt32(4294967295), "4294967295");
assertEquals(0,          ToUInt32(4294967296), "4294967296");
assertEquals(1,          ToUInt32(4294967297), "4294967297");

assertEquals(2147483649, ToUInt32(-2147483647), "-2147483647");
assertEquals(2147483648, ToUInt32(-2147483648), "-2147483648");
assertEquals(2147483647, ToUInt32(-2147483649), "-2147483649");

assertEquals(1,          ToUInt32(-4294967295), "-4294967295");
assertEquals(0,          ToUInt32(-4294967296), "-4294967296");
assertEquals(4294967295, ToUInt32(-4294967297), "-4294967297");

assertEquals(2147483647, ToUInt32('2147483647'), "'2147483647'");
assertEquals(2147483648, ToUInt32('2147483648'), "'2147483648'");
assertEquals(2147483649, ToUInt32('2147483649'), "'2147483649'");

assertEquals(4294967295, ToUInt32('4294967295'), "'4294967295'");
assertEquals(0,          ToUInt32('4294967296'), "'4294967296'");
assertEquals(1,          ToUInt32('4294967297'), "'4294967297'");


