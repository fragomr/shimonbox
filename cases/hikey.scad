// Copyright (c) 2017 Clément Bœsch <u pkh.me>
//
// Permission to use, copy, modify, and distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use <../boards/hikey.scad>
use <../case.scad>
use <../utils.scad>

board_dim = map_get(hikey_info(), "board_dim");

vents = [
    [
        "top", [
            ["dim", [board_dim[0] * .75, board_dim[1] * .4]],
            ["pos", [0, board_dim[1]*1/10]],
        ],
    ],[
        "bottom", default_bottom_vents(board_dim),
    ],
];

cfg = [
    ["min_z", 3],
    ["max_z", 9],
    ["vents", vents],
];

mode = "demo";
case("hikey", cfg, mode);
