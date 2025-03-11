fn two_pow(n: u256) -> u256 {
    if n >= 128 {
        two_pow_in_range_128_255(n)
    } else {
        two_pow_in_range_0_127(n)
    }
}

fn two_pow_in_range_0_127(n: u256) -> u256 {
    if n >= 64 {
        two_pow_in_range_64_127(n)
    } else {
        two_pow_in_range_0_63(n)
    }
}

fn two_pow_in_range_128_255(n: u256) -> u256 {
    if n >= 192 {
        two_pow_in_range_192_255(n)
    } else {
        two_pow_in_range_128_191(n)
    }
}

fn two_pow_in_range_0_63(n: u256) -> u256 {
    if n >= 32 {
        two_pow_in_range_32_63(n)
    } else {
        two_pow_in_range_0_31(n)
    }
}

fn two_pow_in_range_64_127(n: u256) -> u256 {
    if n >= 96 {
        two_pow_in_range_96_127(n)
    } else {
        two_pow_in_range_64_95(n)
    }
}

fn two_pow_in_range_128_191(n: u256) -> u256 {
    if n >= 160 {
        two_pow_in_range_160_191(n)
    } else {
        two_pow_in_range_128_159(n)
    }
}

fn two_pow_in_range_192_255(n: u256) -> u256 {
    if n >= 224 {
        two_pow_in_range_224_255(n)
    } else {
        two_pow_in_range_192_223(n)
    }
}

fn two_pow_in_range_0_31(n: u256) -> u256 {
    if n >= 16 {
        two_pow_in_range_16_31(n)
    } else {
        two_pow_in_range_0_15(n)
    }
}

fn two_pow_in_range_32_63(n: u256) -> u256 {
    if n >= 48 {
        two_pow_in_range_48_63(n)
    } else {
        two_pow_in_range_32_47(n)
    }
}

fn two_pow_in_range_64_95(n: u256) -> u256 {
    if n >= 80 {
        two_pow_in_range_80_95(n)
    } else {
        two_pow_in_range_64_79(n)
    }
}

fn two_pow_in_range_96_127(n: u256) -> u256 {
    if n >= 112 {
        two_pow_in_range_112_127(n)
    } else {
        two_pow_in_range_96_111(n)
    }
}

fn two_pow_in_range_128_159(n: u256) -> u256 {
    if n >= 144 {
        two_pow_in_range_144_159(n)
    } else {
        two_pow_in_range_128_143(n)
    }
}

fn two_pow_in_range_160_191(n: u256) -> u256 {
    if n >= 176 {
        two_pow_in_range_176_191(n)
    } else {
        two_pow_in_range_160_175(n)
    }
}

fn two_pow_in_range_192_223(n: u256) -> u256 {
    if n >= 208 {
        two_pow_in_range_208_223(n)
    } else {
        two_pow_in_range_192_207(n)
    }
}

fn two_pow_in_range_224_255(n: u256) -> u256 {
    if n >= 240 {
        two_pow_in_range_240_255(n)
    } else {
        two_pow_in_range_224_239(n)
    }
}

fn two_pow_in_range_0_15(n: u256) -> u256 {
    if n == 0 {
        1
    } else if n == 1 {
        TWO_POW_1
    } else if n == 2 {
        TWO_POW_2
    } else if n == 3 {
        TWO_POW_3
    } else if n == 4 {
        TWO_POW_4
    } else if n == 5 {
        TWO_POW_5
    } else if n == 6 {
        TWO_POW_6
    } else if n == 7 {
        TWO_POW_7
    } else if n == 8 {
        TWO_POW_8
    } else if n == 9 {
        TWO_POW_9
    } else if n == 10 {
        TWO_POW_10
    } else if n == 11 {
        TWO_POW_11
    } else if n == 12 {
        TWO_POW_12
    } else if n == 13 {
        TWO_POW_13
    } else if n == 14 {
        TWO_POW_14
    } else {
        TWO_POW_15
    }
}

fn two_pow_in_range_16_31(n: u256) -> u256 {
    if n == 16 {
        TWO_POW_16
    } else if n == 17 {
        TWO_POW_17
    } else if n == 18 {
        TWO_POW_18
    } else if n == 19 {
        TWO_POW_19
    } else if n == 20 {
        TWO_POW_20
    } else if n == 21 {
        TWO_POW_21
    } else if n == 22 {
        TWO_POW_22
    } else if n == 23 {
        TWO_POW_23
    } else if n == 24 {
        TWO_POW_24
    } else if n == 25 {
        TWO_POW_25
    } else if n == 26 {
        TWO_POW_26
    } else if n == 27 {
        TWO_POW_27
    } else if n == 28 {
        TWO_POW_28
    } else if n == 29 {
        TWO_POW_29
    } else if n == 30 {
        TWO_POW_30
    } else {
        TWO_POW_31
    }
}

fn two_pow_in_range_32_47(n: u256) -> u256 {
    if n == 32 {
        TWO_POW_32
    } else if n == 33 {
        TWO_POW_33
    } else if n == 34 {
        TWO_POW_34
    } else if n == 35 {
        TWO_POW_35
    } else if n == 36 {
        TWO_POW_36
    } else if n == 37 {
        TWO_POW_37
    } else if n == 38 {
        TWO_POW_38
    } else if n == 39 {
        TWO_POW_39
    } else if n == 40 {
        TWO_POW_40
    } else if n == 41 {
        TWO_POW_41
    } else if n == 42 {
        TWO_POW_42
    } else if n == 43 {
        TWO_POW_43
    } else if n == 44 {
        TWO_POW_44
    } else if n == 45 {
        TWO_POW_45
    } else if n == 46 {
        TWO_POW_46
    } else {
        TWO_POW_47
    }
}

fn two_pow_in_range_48_63(n: u256) -> u256 {
    if n == 48 {
        TWO_POW_48
    } else if n == 49 {
        TWO_POW_49
    } else if n == 50 {
        TWO_POW_50
    } else if n == 51 {
        TWO_POW_51
    } else if n == 52 {
        TWO_POW_52
    } else if n == 53 {
        TWO_POW_53
    } else if n == 54 {
        TWO_POW_54
    } else if n == 55 {
        TWO_POW_55
    } else if n == 56 {
        TWO_POW_56
    } else if n == 57 {
        TWO_POW_57
    } else if n == 58 {
        TWO_POW_58
    } else if n == 59 {
        TWO_POW_59
    } else if n == 60 {
        TWO_POW_60
    } else if n == 61 {
        TWO_POW_61
    } else if n == 62 {
        TWO_POW_62
    } else {
        TWO_POW_63
    }
}

fn two_pow_in_range_64_79(n: u256) -> u256 {
    if n == 64 {
        TWO_POW_64
    } else if n == 65 {
        TWO_POW_65
    } else if n == 66 {
        TWO_POW_66
    } else if n == 67 {
        TWO_POW_67
    } else if n == 68 {
        TWO_POW_68
    } else if n == 69 {
        TWO_POW_69
    } else if n == 70 {
        TWO_POW_70
    } else if n == 71 {
        TWO_POW_71
    } else if n == 72 {
        TWO_POW_72
    } else if n == 73 {
        TWO_POW_73
    } else if n == 74 {
        TWO_POW_74
    } else if n == 75 {
        TWO_POW_75
    } else if n == 76 {
        TWO_POW_76
    } else if n == 77 {
        TWO_POW_77
    } else if n == 78 {
        TWO_POW_78
    } else {
        TWO_POW_79
    }
}

fn two_pow_in_range_80_95(n: u256) -> u256 {
    if n == 80 {
        TWO_POW_80
    } else if n == 81 {
        TWO_POW_81
    } else if n == 82 {
        TWO_POW_82
    } else if n == 83 {
        TWO_POW_83
    } else if n == 84 {
        TWO_POW_84
    } else if n == 85 {
        TWO_POW_85
    } else if n == 86 {
        TWO_POW_86
    } else if n == 87 {
        TWO_POW_87
    } else if n == 88 {
        TWO_POW_88
    } else if n == 89 {
        TWO_POW_89
    } else if n == 90 {
        TWO_POW_90
    } else if n == 91 {
        TWO_POW_91
    } else if n == 92 {
        TWO_POW_92
    } else if n == 93 {
        TWO_POW_93
    } else if n == 94 {
        TWO_POW_94
    } else {
        TWO_POW_95
    }
}

fn two_pow_in_range_96_111(n: u256) -> u256 {
    if n == 96 {
        TWO_POW_96
    } else if n == 97 {
        TWO_POW_97
    } else if n == 98 {
        TWO_POW_98
    } else if n == 99 {
        TWO_POW_99
    } else if n == 100 {
        TWO_POW_100
    } else if n == 101 {
        TWO_POW_101
    } else if n == 102 {
        TWO_POW_102
    } else if n == 103 {
        TWO_POW_103
    } else if n == 104 {
        TWO_POW_104
    } else if n == 105 {
        TWO_POW_105
    } else if n == 106 {
        TWO_POW_106
    } else if n == 107 {
        TWO_POW_107
    } else if n == 108 {
        TWO_POW_108
    } else if n == 109 {
        TWO_POW_109
    } else if n == 110 {
        TWO_POW_110
    } else {
        TWO_POW_111
    }
}

fn two_pow_in_range_112_127(n: u256) -> u256 {
    if n == 112 {
        TWO_POW_112
    } else if n == 113 {
        TWO_POW_113
    } else if n == 114 {
        TWO_POW_114
    } else if n == 115 {
        TWO_POW_115
    } else if n == 116 {
        TWO_POW_116
    } else if n == 117 {
        TWO_POW_117
    } else if n == 118 {
        TWO_POW_118
    } else if n == 119 {
        TWO_POW_119
    } else if n == 120 {
        TWO_POW_120
    } else if n == 121 {
        TWO_POW_121
    } else if n == 122 {
        TWO_POW_122
    } else if n == 123 {
        TWO_POW_123
    } else if n == 124 {
        TWO_POW_124
    } else if n == 125 {
        TWO_POW_125
    } else if n == 126 {
        TWO_POW_126
    } else {
        TWO_POW_127
    }
}

fn two_pow_in_range_128_143(n: u256) -> u256 {
    if n == 128 {
        TWO_POW_128
    } else if n == 129 {
        TWO_POW_129
    } else if n == 130 {
        TWO_POW_130
    } else if n == 131 {
        TWO_POW_131
    } else if n == 132 {
        TWO_POW_132
    } else if n == 133 {
        TWO_POW_133
    } else if n == 134 {
        TWO_POW_134
    } else if n == 135 {
        TWO_POW_135
    } else if n == 136 {
        TWO_POW_136
    } else if n == 137 {
        TWO_POW_137
    } else if n == 138 {
        TWO_POW_138
    } else if n == 139 {
        TWO_POW_139
    } else if n == 140 {
        TWO_POW_140
    } else if n == 141 {
        TWO_POW_141
    } else if n == 142 {
        TWO_POW_142
    } else {
        TWO_POW_143
    }
}

fn two_pow_in_range_144_159(n: u256) -> u256 {
    if n == 144 {
        TWO_POW_144
    } else if n == 145 {
        TWO_POW_145
    } else if n == 145 {
        TWO_POW_145
    } else if n == 146 {
        TWO_POW_146
    } else if n == 147 {
        TWO_POW_147
    } else if n == 148 {
        TWO_POW_148
    } else if n == 149 {
        TWO_POW_149
    } else if n == 150 {
        TWO_POW_150
    } else if n == 151 {
        TWO_POW_151
    } else if n == 152 {
        TWO_POW_152
    } else if n == 153 {
        TWO_POW_153
    } else if n == 154 {
        TWO_POW_154
    } else if n == 155 {
        TWO_POW_155
    } else if n == 156 {
        TWO_POW_156
    } else if n == 157 {
        TWO_POW_157
    } else if n == 158 {
        TWO_POW_158
    } else {
        TWO_POW_159
    }
}

fn two_pow_in_range_160_175(n: u256) -> u256 {
    if n == 160 {
        TWO_POW_160
    } else if n == 161 {
        TWO_POW_161
    } else if n == 162 {
        TWO_POW_162
    } else if n == 163 {
        TWO_POW_163
    } else if n == 164 {
        TWO_POW_164
    } else if n == 165 {
        TWO_POW_165
    } else if n == 166 {
        TWO_POW_166
    } else if n == 167 {
        TWO_POW_167
    } else if n == 168 {
        TWO_POW_168
    } else if n == 169 {
        TWO_POW_169
    } else if n == 170 {
        TWO_POW_170
    } else if n == 171 {
        TWO_POW_171
    } else if n == 172 {
        TWO_POW_172
    } else if n == 173 {
        TWO_POW_173
    } else if n == 174 {
        TWO_POW_174
    } else {
        TWO_POW_175
    }
}

fn two_pow_in_range_176_191(n: u256) -> u256 {
    if n == 176 {
        TWO_POW_176
    } else if n == 177 {
        TWO_POW_177
    } else if n == 178 {
        TWO_POW_178
    } else if n == 179 {
        TWO_POW_179
    } else if n == 180 {
        TWO_POW_180
    } else if n == 181 {
        TWO_POW_181
    } else if n == 182 {
        TWO_POW_182
    } else if n == 183 {
        TWO_POW_183
    } else if n == 184 {
        TWO_POW_184
    } else if n == 185 {
        TWO_POW_185
    } else if n == 186 {
        TWO_POW_186
    } else if n == 187 {
        TWO_POW_187
    } else if n == 188 {
        TWO_POW_188
    } else if n == 189 {
        TWO_POW_189
    } else if n == 190 {
        TWO_POW_190
    } else {
        TWO_POW_191
    }
}

fn two_pow_in_range_192_207(n: u256) -> u256 {
    if n == 192 {
        TWO_POW_192
    } else if n == 193 {
        TWO_POW_193
    } else if n == 194 {
        TWO_POW_194
    } else if n == 195 {
        TWO_POW_195
    } else if n == 196 {
        TWO_POW_196
    } else if n == 197 {
        TWO_POW_197
    } else if n == 198 {
        TWO_POW_198
    } else if n == 199 {
        TWO_POW_199
    } else if n == 200 {
        TWO_POW_200
    } else if n == 201 {
        TWO_POW_201
    } else if n == 202 {
        TWO_POW_202
    } else if n == 203 {
        TWO_POW_203
    } else if n == 204 {
        TWO_POW_204
    } else if n == 205 {
        TWO_POW_205
    } else if n == 206 {
        TWO_POW_206
    } else {
        TWO_POW_207
    }
}

fn two_pow_in_range_208_223(n: u256) -> u256 {
    if n == 208 {
        TWO_POW_208
    } else if n == 209 {
        TWO_POW_209
    } else if n == 210 {
        TWO_POW_210
    } else if n == 211 {
        TWO_POW_211
    } else if n == 212 {
        TWO_POW_212
    } else if n == 213 {
        TWO_POW_213
    } else if n == 214 {
        TWO_POW_214
    } else if n == 215 {
        TWO_POW_215
    } else if n == 216 {
        TWO_POW_216
    } else if n == 217 {
        TWO_POW_217
    } else if n == 218 {
        TWO_POW_218
    } else if n == 219 {
        TWO_POW_219
    } else if n == 220 {
        TWO_POW_220
    } else if n == 221 {
        TWO_POW_221
    } else if n == 222 {
        TWO_POW_222
    } else {
        TWO_POW_223
    }
}

fn two_pow_in_range_224_239(n: u256) -> u256 {
    if n == 224 {
        TWO_POW_224
    } else if n == 225 {
        TWO_POW_225
    } else if n == 226 {
        TWO_POW_226
    } else if n == 227 {
        TWO_POW_227
    } else if n == 228 {
        TWO_POW_228
    } else if n == 229 {
        TWO_POW_229
    } else if n == 230 {
        TWO_POW_230
    } else if n == 231 {
        TWO_POW_231
    } else if n == 232 {
        TWO_POW_232
    } else if n == 233 {
        TWO_POW_233
    } else if n == 234 {
        TWO_POW_234
    } else if n == 235 {
        TWO_POW_235
    } else if n == 236 {
        TWO_POW_236
    } else if n == 237 {
        TWO_POW_237
    } else if n == 238 {
        TWO_POW_238
    } else {
        TWO_POW_239
    }
}

fn two_pow_in_range_240_255(n: u256) -> u256 {
    if n == 240 {
        TWO_POW_240
    } else if n == 241 {
        TWO_POW_241
    } else if n == 242 {
        TWO_POW_242
    } else if n == 243 {
        TWO_POW_243
    } else if n == 244 {
        TWO_POW_244
    } else if n == 245 {
        TWO_POW_245
    } else if n == 246 {
        TWO_POW_246
    } else if n == 247 {
        TWO_POW_247
    } else if n == 248 {
        TWO_POW_248
    } else if n == 249 {
        TWO_POW_249
    } else if n == 250 {
        TWO_POW_250
    } else if n == 251 {
        TWO_POW_251
    } else if n == 252 {
        TWO_POW_252
    } else if n == 253 {
        TWO_POW_253
    } else if n == 254 {
        TWO_POW_254
    } else {
        TWO_POW_255
    }
}

const TWO_POW_1: u256 = 0x2;
const TWO_POW_2: u256 = 0x4;
const TWO_POW_3: u256 = 0x8;
const TWO_POW_4: u256 = 0x10;
const TWO_POW_5: u256 = 0x20;
const TWO_POW_6: u256 = 0x40;
const TWO_POW_7: u256 = 0x80;
const TWO_POW_8: u256 = 0x100;
const TWO_POW_9: u256 = 0x200;
const TWO_POW_10: u256 = 0x400;
const TWO_POW_11: u256 = 0x800;
const TWO_POW_12: u256 = 0x1000;
const TWO_POW_13: u256 = 0x2000;
const TWO_POW_14: u256 = 0x4000;
const TWO_POW_15: u256 = 0x8000;
const TWO_POW_16: u256 = 0x10000;
const TWO_POW_17: u256 = 0x20000;
const TWO_POW_18: u256 = 0x40000;
const TWO_POW_19: u256 = 0x80000;
const TWO_POW_20: u256 = 0x100000;
const TWO_POW_21: u256 = 0x200000;
const TWO_POW_22: u256 = 0x400000;
const TWO_POW_23: u256 = 0x800000;
const TWO_POW_24: u256 = 0x1000000;
const TWO_POW_25: u256 = 0x2000000;
const TWO_POW_26: u256 = 0x4000000;
const TWO_POW_27: u256 = 0x8000000;
const TWO_POW_28: u256 = 0x10000000;
const TWO_POW_29: u256 = 0x20000000;
const TWO_POW_30: u256 = 0x40000000;
const TWO_POW_31: u256 = 0x80000000;
const TWO_POW_32: u256 = 0x100000000;
const TWO_POW_33: u256 = 0x200000000;
const TWO_POW_34: u256 = 0x400000000;
const TWO_POW_35: u256 = 0x800000000;
const TWO_POW_36: u256 = 0x1000000000;
const TWO_POW_37: u256 = 0x2000000000;
const TWO_POW_38: u256 = 0x4000000000;
const TWO_POW_39: u256 = 0x8000000000;
const TWO_POW_40: u256 = 0x10000000000;
const TWO_POW_41: u256 = 0x20000000000;
const TWO_POW_42: u256 = 0x40000000000;
const TWO_POW_43: u256 = 0x80000000000;
const TWO_POW_44: u256 = 0x100000000000;
const TWO_POW_45: u256 = 0x200000000000;
const TWO_POW_46: u256 = 0x400000000000;
const TWO_POW_47: u256 = 0x800000000000;
const TWO_POW_48: u256 = 0x1000000000000;
const TWO_POW_49: u256 = 0x2000000000000;
const TWO_POW_50: u256 = 0x4000000000000;
const TWO_POW_51: u256 = 0x8000000000000;
const TWO_POW_52: u256 = 0x10000000000000;
const TWO_POW_53: u256 = 0x20000000000000;
const TWO_POW_54: u256 = 0x40000000000000;
const TWO_POW_55: u256 = 0x80000000000000;
const TWO_POW_56: u256 = 0x100000000000000;
const TWO_POW_57: u256 = 0x200000000000000;
const TWO_POW_58: u256 = 0x400000000000000;
const TWO_POW_59: u256 = 0x800000000000000;
const TWO_POW_60: u256 = 0x1000000000000000;
const TWO_POW_61: u256 = 0x2000000000000000;
const TWO_POW_62: u256 = 0x4000000000000000;
const TWO_POW_63: u256 = 0x8000000000000000;
const TWO_POW_64: u256 = 0x10000000000000000;
const TWO_POW_65: u256 = 0x20000000000000000;
const TWO_POW_66: u256 = 0x40000000000000000;
const TWO_POW_67: u256 = 0x80000000000000000;
const TWO_POW_68: u256 = 0x100000000000000000;
const TWO_POW_69: u256 = 0x200000000000000000;
const TWO_POW_70: u256 = 0x400000000000000000;
const TWO_POW_71: u256 = 0x800000000000000000;
const TWO_POW_72: u256 = 0x1000000000000000000;
const TWO_POW_73: u256 = 0x2000000000000000000;
const TWO_POW_74: u256 = 0x4000000000000000000;
const TWO_POW_75: u256 = 0x8000000000000000000;
const TWO_POW_76: u256 = 0x10000000000000000000;
const TWO_POW_77: u256 = 0x20000000000000000000;
const TWO_POW_78: u256 = 0x40000000000000000000;
const TWO_POW_79: u256 = 0x80000000000000000000;
const TWO_POW_80: u256 = 0x100000000000000000000;
const TWO_POW_81: u256 = 0x200000000000000000000;
const TWO_POW_82: u256 = 0x400000000000000000000;
const TWO_POW_83: u256 = 0x800000000000000000000;
const TWO_POW_84: u256 = 0x1000000000000000000000;
const TWO_POW_85: u256 = 0x2000000000000000000000;
const TWO_POW_86: u256 = 0x4000000000000000000000;
const TWO_POW_87: u256 = 0x8000000000000000000000;
const TWO_POW_88: u256 = 0x10000000000000000000000;
const TWO_POW_89: u256 = 0x20000000000000000000000;
const TWO_POW_90: u256 = 0x40000000000000000000000;
const TWO_POW_91: u256 = 0x80000000000000000000000;
const TWO_POW_92: u256 = 0x100000000000000000000000;
const TWO_POW_93: u256 = 0x200000000000000000000000;
const TWO_POW_94: u256 = 0x400000000000000000000000;
const TWO_POW_95: u256 = 0x800000000000000000000000;
const TWO_POW_96: u256 = 0x1000000000000000000000000;
const TWO_POW_97: u256 = 0x2000000000000000000000000;
const TWO_POW_98: u256 = 0x4000000000000000000000000;
const TWO_POW_99: u256 = 0x8000000000000000000000000;
const TWO_POW_100: u256 = 0x10000000000000000000000000;
const TWO_POW_101: u256 = 0x20000000000000000000000000;
const TWO_POW_102: u256 = 0x40000000000000000000000000;
const TWO_POW_103: u256 = 0x80000000000000000000000000;
const TWO_POW_104: u256 = 0x100000000000000000000000000;
const TWO_POW_105: u256 = 0x200000000000000000000000000;
const TWO_POW_106: u256 = 0x400000000000000000000000000;
const TWO_POW_107: u256 = 0x800000000000000000000000000;
const TWO_POW_108: u256 = 0x1000000000000000000000000000;
const TWO_POW_109: u256 = 0x2000000000000000000000000000;
const TWO_POW_110: u256 = 0x4000000000000000000000000000;
const TWO_POW_111: u256 = 0x8000000000000000000000000000;
const TWO_POW_112: u256 = 0x10000000000000000000000000000;
const TWO_POW_113: u256 = 0x20000000000000000000000000000;
const TWO_POW_114: u256 = 0x40000000000000000000000000000;
const TWO_POW_115: u256 = 0x80000000000000000000000000000;
const TWO_POW_116: u256 = 0x100000000000000000000000000000;
const TWO_POW_117: u256 = 0x200000000000000000000000000000;
const TWO_POW_118: u256 = 0x400000000000000000000000000000;
const TWO_POW_119: u256 = 0x800000000000000000000000000000;
const TWO_POW_120: u256 = 0x1000000000000000000000000000000;
const TWO_POW_121: u256 = 0x2000000000000000000000000000000;
const TWO_POW_122: u256 = 0x4000000000000000000000000000000;
const TWO_POW_123: u256 = 0x8000000000000000000000000000000;
const TWO_POW_124: u256 = 0x10000000000000000000000000000000;
const TWO_POW_125: u256 = 0x20000000000000000000000000000000;
const TWO_POW_126: u256 = 0x40000000000000000000000000000000;
const TWO_POW_127: u256 = 0x80000000000000000000000000000000;
const TWO_POW_128: u256 = 0x100000000000000000000000000000000;
const TWO_POW_129: u256 = 0x200000000000000000000000000000000;
const TWO_POW_130: u256 = 0x400000000000000000000000000000000;
const TWO_POW_131: u256 = 0x800000000000000000000000000000000;
const TWO_POW_132: u256 = 0x1000000000000000000000000000000000;
const TWO_POW_133: u256 = 0x2000000000000000000000000000000000;
const TWO_POW_134: u256 = 0x4000000000000000000000000000000000;
const TWO_POW_135: u256 = 0x8000000000000000000000000000000000;
const TWO_POW_136: u256 = 0x10000000000000000000000000000000000;
const TWO_POW_137: u256 = 0x20000000000000000000000000000000000;
const TWO_POW_138: u256 = 0x40000000000000000000000000000000000;
const TWO_POW_139: u256 = 0x80000000000000000000000000000000000;
const TWO_POW_140: u256 = 0x100000000000000000000000000000000000;
const TWO_POW_141: u256 = 0x200000000000000000000000000000000000;
const TWO_POW_142: u256 = 0x400000000000000000000000000000000000;
const TWO_POW_143: u256 = 0x800000000000000000000000000000000000;
const TWO_POW_144: u256 = 0x1000000000000000000000000000000000000;
const TWO_POW_145: u256 = 0x2000000000000000000000000000000000000;
const TWO_POW_146: u256 = 0x4000000000000000000000000000000000000;
const TWO_POW_147: u256 = 0x8000000000000000000000000000000000000;
const TWO_POW_148: u256 = 0x10000000000000000000000000000000000000;
const TWO_POW_149: u256 = 0x20000000000000000000000000000000000000;
const TWO_POW_150: u256 = 0x40000000000000000000000000000000000000;
const TWO_POW_151: u256 = 0x80000000000000000000000000000000000000;
const TWO_POW_152: u256 = 0x100000000000000000000000000000000000000;
const TWO_POW_153: u256 = 0x200000000000000000000000000000000000000;
const TWO_POW_154: u256 = 0x400000000000000000000000000000000000000;
const TWO_POW_155: u256 = 0x800000000000000000000000000000000000000;
const TWO_POW_156: u256 = 0x1000000000000000000000000000000000000000;
const TWO_POW_157: u256 = 0x2000000000000000000000000000000000000000;
const TWO_POW_158: u256 = 0x4000000000000000000000000000000000000000;
const TWO_POW_159: u256 = 0x8000000000000000000000000000000000000000;
const TWO_POW_160: u256 = 0x10000000000000000000000000000000000000000;
const TWO_POW_161: u256 = 0x20000000000000000000000000000000000000000;
const TWO_POW_162: u256 = 0x40000000000000000000000000000000000000000;
const TWO_POW_163: u256 = 0x80000000000000000000000000000000000000000;
const TWO_POW_164: u256 = 0x100000000000000000000000000000000000000000;
const TWO_POW_165: u256 = 0x200000000000000000000000000000000000000000;
const TWO_POW_166: u256 = 0x400000000000000000000000000000000000000000;
const TWO_POW_167: u256 = 0x800000000000000000000000000000000000000000;
const TWO_POW_168: u256 = 0x1000000000000000000000000000000000000000000;
const TWO_POW_169: u256 = 0x2000000000000000000000000000000000000000000;
const TWO_POW_170: u256 = 0x4000000000000000000000000000000000000000000;
const TWO_POW_171: u256 = 0x8000000000000000000000000000000000000000000;
const TWO_POW_172: u256 = 0x10000000000000000000000000000000000000000000;
const TWO_POW_173: u256 = 0x20000000000000000000000000000000000000000000;
const TWO_POW_174: u256 = 0x40000000000000000000000000000000000000000000;
const TWO_POW_175: u256 = 0x80000000000000000000000000000000000000000000;
const TWO_POW_176: u256 = 0x100000000000000000000000000000000000000000000;
const TWO_POW_177: u256 = 0x200000000000000000000000000000000000000000000;
const TWO_POW_178: u256 = 0x400000000000000000000000000000000000000000000;
const TWO_POW_179: u256 = 0x800000000000000000000000000000000000000000000;
const TWO_POW_180: u256 = 0x1000000000000000000000000000000000000000000000;
const TWO_POW_181: u256 = 0x2000000000000000000000000000000000000000000000;
const TWO_POW_182: u256 = 0x4000000000000000000000000000000000000000000000;
const TWO_POW_183: u256 = 0x8000000000000000000000000000000000000000000000;
const TWO_POW_184: u256 = 0x10000000000000000000000000000000000000000000000;
const TWO_POW_185: u256 = 0x20000000000000000000000000000000000000000000000;
const TWO_POW_186: u256 = 0x40000000000000000000000000000000000000000000000;
const TWO_POW_187: u256 = 0x80000000000000000000000000000000000000000000000;
const TWO_POW_188: u256 = 0x100000000000000000000000000000000000000000000000;
const TWO_POW_189: u256 = 0x200000000000000000000000000000000000000000000000;
const TWO_POW_190: u256 = 0x400000000000000000000000000000000000000000000000;
const TWO_POW_191: u256 = 0x800000000000000000000000000000000000000000000000;
const TWO_POW_192: u256 = 0x1000000000000000000000000000000000000000000000000;
const TWO_POW_193: u256 = 0x2000000000000000000000000000000000000000000000000;
const TWO_POW_194: u256 = 0x4000000000000000000000000000000000000000000000000;
const TWO_POW_195: u256 = 0x8000000000000000000000000000000000000000000000000;
const TWO_POW_196: u256 = 0x10000000000000000000000000000000000000000000000000;
const TWO_POW_197: u256 = 0x20000000000000000000000000000000000000000000000000;
const TWO_POW_198: u256 = 0x40000000000000000000000000000000000000000000000000;
const TWO_POW_199: u256 = 0x80000000000000000000000000000000000000000000000000;
const TWO_POW_200: u256 = 0x100000000000000000000000000000000000000000000000000;
const TWO_POW_201: u256 = 0x200000000000000000000000000000000000000000000000000;
const TWO_POW_202: u256 = 0x400000000000000000000000000000000000000000000000000;
const TWO_POW_203: u256 = 0x800000000000000000000000000000000000000000000000000;
const TWO_POW_204: u256 = 0x1000000000000000000000000000000000000000000000000000;
const TWO_POW_205: u256 = 0x2000000000000000000000000000000000000000000000000000;
const TWO_POW_206: u256 = 0x4000000000000000000000000000000000000000000000000000;
const TWO_POW_207: u256 = 0x8000000000000000000000000000000000000000000000000000;
const TWO_POW_208: u256 = 0x10000000000000000000000000000000000000000000000000000;
const TWO_POW_209: u256 = 0x20000000000000000000000000000000000000000000000000000;
const TWO_POW_210: u256 = 0x40000000000000000000000000000000000000000000000000000;
const TWO_POW_211: u256 = 0x80000000000000000000000000000000000000000000000000000;
const TWO_POW_212: u256 = 0x100000000000000000000000000000000000000000000000000000;
const TWO_POW_213: u256 = 0x200000000000000000000000000000000000000000000000000000;
const TWO_POW_214: u256 = 0x400000000000000000000000000000000000000000000000000000;
const TWO_POW_215: u256 = 0x800000000000000000000000000000000000000000000000000000;
const TWO_POW_216: u256 = 0x1000000000000000000000000000000000000000000000000000000;
const TWO_POW_217: u256 = 0x2000000000000000000000000000000000000000000000000000000;
const TWO_POW_218: u256 = 0x4000000000000000000000000000000000000000000000000000000;
const TWO_POW_219: u256 = 0x8000000000000000000000000000000000000000000000000000000;
const TWO_POW_220: u256 = 0x10000000000000000000000000000000000000000000000000000000;
const TWO_POW_221: u256 = 0x20000000000000000000000000000000000000000000000000000000;
const TWO_POW_222: u256 = 0x40000000000000000000000000000000000000000000000000000000;
const TWO_POW_223: u256 = 0x80000000000000000000000000000000000000000000000000000000;
const TWO_POW_224: u256 = 0x100000000000000000000000000000000000000000000000000000000;
const TWO_POW_225: u256 = 0x200000000000000000000000000000000000000000000000000000000;
const TWO_POW_226: u256 = 0x400000000000000000000000000000000000000000000000000000000;
const TWO_POW_227: u256 = 0x800000000000000000000000000000000000000000000000000000000;
const TWO_POW_228: u256 = 0x1000000000000000000000000000000000000000000000000000000000;
const TWO_POW_229: u256 = 0x2000000000000000000000000000000000000000000000000000000000;
const TWO_POW_230: u256 = 0x4000000000000000000000000000000000000000000000000000000000;
const TWO_POW_231: u256 = 0x8000000000000000000000000000000000000000000000000000000000;
const TWO_POW_232: u256 = 0x10000000000000000000000000000000000000000000000000000000000;
const TWO_POW_233: u256 = 0x20000000000000000000000000000000000000000000000000000000000;
const TWO_POW_234: u256 = 0x40000000000000000000000000000000000000000000000000000000000;
const TWO_POW_235: u256 = 0x80000000000000000000000000000000000000000000000000000000000;
const TWO_POW_236: u256 = 0x100000000000000000000000000000000000000000000000000000000000;
const TWO_POW_237: u256 = 0x200000000000000000000000000000000000000000000000000000000000;
const TWO_POW_238: u256 = 0x400000000000000000000000000000000000000000000000000000000000;
const TWO_POW_239: u256 = 0x800000000000000000000000000000000000000000000000000000000000;
const TWO_POW_240: u256 = 0x1000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_241: u256 = 0x2000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_242: u256 = 0x4000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_243: u256 = 0x8000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_244: u256 = 0x10000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_245: u256 = 0x20000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_246: u256 = 0x40000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_247: u256 = 0x80000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_248: u256 = 0x100000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_249: u256 = 0x200000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_250: u256 = 0x400000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_251: u256 = 0x800000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_252: u256 = 0x1000000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_253: u256 = 0x2000000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_254: u256 = 0x4000000000000000000000000000000000000000000000000000000000000000;
const TWO_POW_255: u256 = 0x8000000000000000000000000000000000000000000000000000000000000000;


#[cfg(test)]
mod tests {
    use jokers_of_neon_core::constants::two_pow::{
        TWO_POW_104, TWO_POW_112, TWO_POW_120, TWO_POW_128, TWO_POW_136, TWO_POW_144, TWO_POW_152, TWO_POW_16,
        TWO_POW_160, TWO_POW_168, TWO_POW_176, TWO_POW_184, TWO_POW_192, TWO_POW_200, TWO_POW_208, TWO_POW_216,
        TWO_POW_224, TWO_POW_232, TWO_POW_24, TWO_POW_240, TWO_POW_32, TWO_POW_40, TWO_POW_48, TWO_POW_56, TWO_POW_64,
        TWO_POW_72, TWO_POW_8, TWO_POW_80, TWO_POW_88, TWO_POW_96, two_pow,
    };

    #[test]
    fn test_pow() {
        assert(two_pow(0) == 1, 'wrong 2 ** 0');
        assert(two_pow(1) == 2, 'wrong 2 ** 1');
        assert(two_pow(2) == 4, 'wrong 2 ** 2');
        assert(two_pow(3) == 8, 'wrong 2 ** 3');
        assert(two_pow(4) == 16, 'wrong 2 ** 4');
        assert(two_pow(5) == 32, 'wrong 2 ** 5');
        assert(two_pow(6) == 64, 'wrong 2 ** 6');
        assert(two_pow(7) == 128, 'wrong 2 ** 7');
        assert(two_pow(8) == 256, 'wrong 2 ** 8');
        assert(two_pow(9) == 512, 'wrong 2 ** 9');
        assert(two_pow(10) == 1024, 'wrong 2 ** 10');
        assert(two_pow(11) == 2048, 'wrong 2 ** 11');
        assert(two_pow(12) == 4096, 'wrong 2 ** 12');
        assert(two_pow(13) == 8192, 'wrong 2 ** 13');
        assert(two_pow(14) == 16384, 'wrong 2 ** 14');
        assert(two_pow(15) == 32768, 'wrong 2 ** 15');
        assert(two_pow(16) == 65536, 'wrong 2 ** 16');
        assert(two_pow(17) == 131072, 'wrong 2 ** 17');
        assert(two_pow(18) == 262144, 'wrong 2 ** 18');
        assert(two_pow(19) == 524288, 'wrong 2 ** 19');
        assert(two_pow(20) == 1048576, 'wrong 2 ** 20');
        assert(two_pow(21) == 2097152, 'wrong 2 ** 21');
        assert(two_pow(22) == 4194304, 'wrong 2 ** 22');
        assert(two_pow(23) == 8388608, 'wrong 2 ** 23');
        assert(two_pow(24) == 16777216, 'wrong 2 ** 24');
        assert(two_pow(25) == 33554432, 'wrong 2 ** 25');
        assert(two_pow(26) == 67108864, 'wrong 2 ** 26');
        assert(two_pow(27) == 134217728, 'wrong 2 ** 27');
        assert(two_pow(28) == 268435456, 'wrong 2 ** 28');
        assert(two_pow(29) == 536870912, 'wrong 2 ** 29');
        assert(two_pow(30) == 1073741824, 'wrong 2 ** 30');
        assert(two_pow(31) == 2147483648, 'wrong 2 ** 31');
        assert(two_pow(32) == 4294967296, 'wrong 2 ** 32');
        assert(two_pow(33) == 8589934592, 'wrong 2 ** 33');
        assert(two_pow(34) == 17179869184, 'wrong 2 ** 34');
        assert(two_pow(35) == 34359738368, 'wrong 2 ** 35');
        assert(two_pow(36) == 68719476736, 'wrong 2 ** 36');
        assert(two_pow(37) == 137438953472, 'wrong 2 ** 37');
        assert(two_pow(38) == 274877906944, 'wrong 2 ** 38');
        assert(two_pow(39) == 549755813888, 'wrong 2 ** 39');
        assert(two_pow(40) == 1099511627776, 'wrong 2 ** 40');
        assert(two_pow(41) == 2199023255552, 'wrong 2 ** 41');
        assert(two_pow(42) == 4398046511104, 'wrong 2 ** 42');
        assert(two_pow(43) == 8796093022208, 'wrong 2 ** 43');
        assert(two_pow(44) == 17592186044416, 'wrong 2 ** 44');
        assert(two_pow(45) == 35184372088832, 'wrong 2 ** 45');
        assert(two_pow(46) == 70368744177664, 'wrong 2 ** 46');
        assert(two_pow(47) == 140737488355328, 'wrong 2 ** 47');
        assert(two_pow(48) == 281474976710656, 'wrong 2 ** 48');
        assert(two_pow(49) == 562949953421312, 'wrong 2 ** 49');
        assert(two_pow(50) == 1125899906842624, 'wrong 2 ** 50');
        assert(two_pow(51) == 2251799813685248, 'wrong 2 ** 51');
        assert(two_pow(52) == 4503599627370496, 'wrong 2 ** 52');
        assert(two_pow(53) == 9007199254740992, 'wrong 2 ** 53');
        assert(two_pow(54) == 18014398509481984, 'wrong 2 ** 54');
        assert(two_pow(55) == 36028797018963968, 'wrong 2 ** 55');
        assert(two_pow(56) == 72057594037927936, 'wrong 2 ** 56');
        assert(two_pow(57) == 144115188075855872, 'wrong 2 ** 57');
        assert(two_pow(58) == 288230376151711744, 'wrong 2 ** 58');
        assert(two_pow(59) == 576460752303423488, 'wrong 2 ** 59');
        assert(two_pow(60) == 1152921504606846976, 'wrong 2 ** 60');
        assert(two_pow(61) == 2305843009213693952, 'wrong 2 ** 61');
        assert(two_pow(62) == 4611686018427387904, 'wrong 2 ** 62');
        assert(two_pow(63) == 9223372036854775808, 'wrong 2 ** 63');
        assert(two_pow(64) == 18446744073709551616, 'wrong 2 ** 64');
        assert(two_pow(65) == 36893488147419103232, 'wrong 2 ** 65');
        assert(two_pow(65) == 36893488147419103232, 'wrong 2 ** 65');
        assert(two_pow(66) == 73786976294838206464, 'wrong 2 ** 66');
        assert(two_pow(67) == 147573952589676412928, 'wrong 2 ** 67');
        assert(two_pow(68) == 295147905179352825856, 'wrong 2 ** 68');
        assert(two_pow(69) == 590295810358705651712, 'wrong 2 ** 69');
        assert(two_pow(70) == 1180591620717411303424, 'wrong 2 ** 70');
        assert(two_pow(71) == 2361183241434822606848, 'wrong 2 ** 71');
        assert(two_pow(72) == 4722366482869645213696, 'wrong 2 ** 72');
        assert(two_pow(73) == 9444732965739290427392, 'wrong 2 ** 73');
        assert(two_pow(74) == 18889465931478580854784, 'wrong 2 ** 74');
        assert(two_pow(75) == 37778931862957161709568, 'wrong 2 ** 75');
        assert(two_pow(76) == 75557863725914323419136, 'wrong 2 ** 76');
        assert(two_pow(77) == 151115727451828646838272, 'wrong 2 ** 77');
        assert(two_pow(78) == 302231454903657293676544, 'wrong 2 ** 78');
        assert(two_pow(79) == 604462909807314587353088, 'wrong 2 ** 79');
        assert(two_pow(80) == 1208925819614629174706176, 'wrong 2 ** 80');
        assert(two_pow(81) == 2417851639229258349412352, 'wrong 2 ** 81');
        assert(two_pow(82) == 4835703278458516698824704, 'wrong 2 ** 82');
        assert(two_pow(83) == 9671406556917033397649408, 'wrong 2 ** 83');
        assert(two_pow(84) == 19342813113834066795298816, 'wrong 2 ** 84');
        assert(two_pow(85) == 38685626227668133590597632, 'wrong 2 ** 85');
        assert(two_pow(86) == 77371252455336267181195264, 'wrong 2 ** 86');
        assert(two_pow(87) == 154742504910672534362390528, 'wrong 2 ** 87');
        assert(two_pow(88) == 309485009821345068724781056, 'wrong 2 ** 88');
        assert(two_pow(89) == 618970019642690137449562112, 'wrong 2 ** 89');
        assert(two_pow(90) == 1237940039285380274899124224, 'wrong 2 ** 90');
        assert(two_pow(91) == 2475880078570760549798248448, 'wrong 2 ** 91');
        assert(two_pow(92) == 4951760157141521099596496896, 'wrong 2 ** 92');
        assert(two_pow(93) == 9903520314283042199192993792, 'wrong 2 ** 93');
        assert(two_pow(94) == 19807040628566084398385987584, 'wrong 2 ** 94');
        assert(two_pow(95) == 39614081257132168796771975168, 'wrong 2 ** 95');
        assert(two_pow(96) == 79228162514264337593543950336, 'wrong 2 ** 96');
        assert(two_pow(97) == 158456325028528675187087900672, 'wrong 2 ** 97');
        assert(two_pow(98) == 316912650057057350374175801344, 'wrong 2 ** 98');
        assert(two_pow(99) == 633825300114114700748351602688, 'wrong 2 ** 99');
        assert(two_pow(100) == 1267650600228229401496703205376, 'wrong 2 ** 100');
        assert(two_pow(101) == 2535301200456458802993406410752, 'wrong 2 ** 101');
        assert(two_pow(102) == 5070602400912917605986812821504, 'wrong 2 ** 102');
        assert(two_pow(103) == 10141204801825835211973625643008, 'wrong 2 ** 103');
        assert(two_pow(104) == 20282409603651670423947251286016, 'wrong 2 ** 104');
        assert(two_pow(105) == 40564819207303340847894502572032, 'wrong 2 ** 105');
        assert(two_pow(106) == 81129638414606681695789005144064, 'wrong 2 ** 106');
        assert(two_pow(107) == 162259276829213363391578010288128, 'wrong 2 ** 107');
        assert(two_pow(108) == 324518553658426726783156020576256, 'wrong 2 ** 108');
        assert(two_pow(109) == 649037107316853453566312041152512, 'wrong 2 ** 109');
        assert(two_pow(110) == 1298074214633706907132624082305024, 'wrong 2 ** 110');
        assert(two_pow(111) == 2596148429267413814265248164610048, 'wrong 2 ** 111');
        assert(two_pow(112) == 5192296858534827628530496329220096, 'wrong 2 ** 112');
        assert(two_pow(113) == 10384593717069655257060992658440192, 'wrong 2 ** 113');
        assert(two_pow(114) == 20769187434139310514121985316880384, 'wrong 2 ** 114');
        assert(two_pow(115) == 41538374868278621028243970633760768, 'wrong 2 ** 115');
        assert(two_pow(116) == 83076749736557242056487941267521536, 'wrong 2 ** 116');
        assert(two_pow(117) == 166153499473114484112975882535043072, 'wrong 2 ** 117');
        assert(two_pow(118) == 332306998946228968225951765070086144, 'wrong 2 ** 118');
        assert(two_pow(119) == 664613997892457936451903530140172288, 'wrong 2 ** 119');
        assert(two_pow(120) == 1329227995784915872903807060280344576, 'wrong 2 ** 120');
        assert(two_pow(121) == 2658455991569831745807614120560689152, 'wrong 2 ** 121');
        assert(two_pow(122) == 5316911983139663491615228241121378304, 'wrong 2 ** 122');
        assert(two_pow(123) == 10633823966279326983230456482242756608, 'wrong 2 ** 123');
        assert(two_pow(124) == 21267647932558653966460912964485513216, 'wrong 2 ** 124');
        assert(two_pow(125) == 42535295865117307932921825928971026432, 'wrong 2 ** 125');
        assert(two_pow(126) == 85070591730234615865843651857942052864, 'wrong 2 ** 126');
        assert(two_pow(127) == 170141183460469231731687303715884105728, 'wrong 2 ** 127');
        assert(two_pow(128) == 340282366920938463463374607431768211456, 'wrong 2 ** 128');
        assert(two_pow(129) == 680564733841876926926749214863536422912, 'wrong 2 ** 129');
        assert(two_pow(130) == 1361129467683753853853498429727072845824, 'wrong 2 ** 130');
        assert(two_pow(131) == 2722258935367507707706996859454145691648, 'wrong 2 ** 131');
        assert(two_pow(132) == 5444517870735015415413993718908291383296, 'wrong 2 ** 132');
        assert(two_pow(133) == 10889035741470030830827987437816582766592, 'wrong 2 ** 133');
        assert(two_pow(134) == 21778071482940061661655974875633165533184, 'wrong 2 ** 134');
        assert(two_pow(135) == 43556142965880123323311949751266331066368, 'wrong 2 ** 135');
        assert(two_pow(136) == 87112285931760246646623899502532662132736, 'wrong 2 ** 136');
        assert(two_pow(137) == 174224571863520493293247799005065324265472, 'wrong 2 ** 137');
        assert(two_pow(138) == 348449143727040986586495598010130648530944, 'wrong 2 ** 138');
        assert(two_pow(139) == 696898287454081973172991196020261297061888, 'wrong 2 ** 139');
        assert(two_pow(140) == 1393796574908163946345982392040522594123776, 'wrong 2 ** 140');
        assert(two_pow(141) == 2787593149816327892691964784081045188247552, 'wrong 2 ** 141');
        assert(two_pow(142) == 5575186299632655785383929568162090376495104, 'wrong 2 ** 142');
        assert(two_pow(143) == 11150372599265311570767859136324180752990208, 'wrong 2 ** 143');
        assert(two_pow(144) == 22300745198530623141535718272648361505980416, 'wrong 2 ** 144');
        assert(two_pow(145) == 44601490397061246283071436545296723011960832, 'wrong 2 ** 145');
        assert(two_pow(146) == 89202980794122492566142873090593446023921664, 'wrong 2 ** 146');
        assert(two_pow(147) == 178405961588244985132285746181186892047843328, 'wrong 2 ** 147');
        assert(two_pow(148) == 356811923176489970264571492362373784095686656, 'wrong 2 ** 148');
        assert(two_pow(149) == 713623846352979940529142984724747568191373312, 'wrong 2 ** 149');
        assert(two_pow(150) == 1427247692705959881058285969449495136382746624, 'wrong 2 ** 150');
        assert(two_pow(151) == 2854495385411919762116571938898990272765493248, 'wrong 2 ** 151');
        assert(two_pow(152) == 5708990770823839524233143877797980545530986496, 'wrong 2 ** 152');
        assert(two_pow(153) == 11417981541647679048466287755595961091061972992, 'wrong 2 ** 153');
        assert(two_pow(154) == 22835963083295358096932575511191922182123945984, 'wrong 2 ** 154');
        assert(two_pow(155) == 45671926166590716193865151022383844364247891968, 'wrong 2 ** 155');
        assert(two_pow(156) == 91343852333181432387730302044767688728495783936, 'wrong 2 ** 156');
        assert(two_pow(157) == 182687704666362864775460604089535377456991567872, 'wrong 2 ** 157');
        assert(two_pow(158) == 365375409332725729550921208179070754913983135744, 'wrong 2 ** 158');
        assert(two_pow(159) == 730750818665451459101842416358141509827966271488, 'wrong 2 ** 159');
        assert(two_pow(160) == 1461501637330902918203684832716283019655932542976, 'wrong 2 ** 160');
        assert(two_pow(161) == 2923003274661805836407369665432566039311865085952, 'wrong 2 ** 161');
        assert(two_pow(162) == 5846006549323611672814739330865132078623730171904, 'wrong 2 ** 162');
        assert(two_pow(163) == 11692013098647223345629478661730264157247460343808, 'wrong 2 ** 163');
        assert(two_pow(164) == 23384026197294446691258957323460528314494920687616, 'wrong 2 ** 164');
        assert(two_pow(165) == 46768052394588893382517914646921056628989841375232, 'wrong 2 ** 165');
        assert(two_pow(166) == 93536104789177786765035829293842113257979682750464, 'wrong 2 ** 166');
        assert(two_pow(167) == 187072209578355573530071658587684226515959365500928, 'wrong 2 ** 167');
        assert(two_pow(168) == 374144419156711147060143317175368453031918731001856, 'wrong 2 ** 168');
        assert(two_pow(169) == 748288838313422294120286634350736906063837462003712, 'wrong 2 ** 169');
        assert(two_pow(170) == 1496577676626844588240573268701473812127674924007424, 'wrong 2 ** 170');
        assert(two_pow(171) == 2993155353253689176481146537402947624255349848014848, 'wrong 2 ** 171');
        assert(two_pow(172) == 5986310706507378352962293074805895248510699696029696, 'wrong 2 ** 172');
        assert(two_pow(173) == 11972621413014756705924586149611790497021399392059392, 'wrong 2 ** 173');
        assert(two_pow(174) == 23945242826029513411849172299223580994042798784118784, 'wrong 2 ** 174');
        assert(two_pow(175) == 47890485652059026823698344598447161988085597568237568, 'wrong 2 ** 175');
        assert(two_pow(176) == 95780971304118053647396689196894323976171195136475136, 'wrong 2 ** 176');
        assert(two_pow(177) == 191561942608236107294793378393788647952342390272950272, 'wrong 2 ** 177');
        assert(two_pow(178) == 383123885216472214589586756787577295904684780545900544, 'wrong 2 ** 178');
        assert(two_pow(179) == 766247770432944429179173513575154591809369561091801088, 'wrong 2 ** 179');
        assert(two_pow(180) == 1532495540865888858358347027150309183618739122183602176, 'wrong 2 ** 180');
        assert(two_pow(181) == 3064991081731777716716694054300618367237478244367204352, 'wrong 2 ** 181');
        assert(two_pow(182) == 6129982163463555433433388108601236734474956488734408704, 'wrong 2 ** 182');
        assert(two_pow(183) == 12259964326927110866866776217202473468949912977468817408, 'wrong 2 ** 183');
        assert(two_pow(184) == 24519928653854221733733552434404946937899825954937634816, 'wrong 2 ** 184');
        assert(two_pow(185) == 49039857307708443467467104868809893875799651909875269632, 'wrong 2 ** 185');
        assert(two_pow(186) == 98079714615416886934934209737619787751599303819750539264, 'wrong 2 ** 186');
        assert(two_pow(187) == 196159429230833773869868419475239575503198607639501078528, 'wrong 2 ** 187');
        assert(two_pow(188) == 392318858461667547739736838950479151006397215279002157056, 'wrong 2 ** 188');
        assert(two_pow(189) == 784637716923335095479473677900958302012794430558004314112, 'wrong 2 ** 189');
        assert(two_pow(190) == 1569275433846670190958947355801916604025588861116008628224, 'wrong 2 ** 190');
        assert(two_pow(191) == 3138550867693340381917894711603833208051177722232017256448, 'wrong 2 ** 191');
        assert(two_pow(192) == 6277101735386680763835789423207666416102355444464034512896, 'wrong 2 ** 192');
        assert(two_pow(193) == 12554203470773361527671578846415332832204710888928069025792, 'wrong 2 ** 193');
        assert(two_pow(194) == 25108406941546723055343157692830665664409421777856138051584, 'wrong 2 ** 194');
        assert(two_pow(195) == 50216813883093446110686315385661331328818843555712276103168, 'wrong 2 ** 195');
        assert(two_pow(196) == 100433627766186892221372630771322662657637687111424552206336, 'wrong 2 ** 196');
        assert(two_pow(197) == 200867255532373784442745261542645325315275374222849104412672, 'wrong 2 ** 197');
        assert(two_pow(198) == 401734511064747568885490523085290650630550748445698208825344, 'wrong 2 ** 198');
        assert(two_pow(199) == 803469022129495137770981046170581301261101496891396417650688, 'wrong 2 ** 199');
        assert(two_pow(200) == 1606938044258990275541962092341162602522202993782792835301376, 'wrong 2 ** 200');
        assert(two_pow(201) == 3213876088517980551083924184682325205044405987565585670602752, 'wrong 2 ** 201');
        assert(two_pow(202) == 6427752177035961102167848369364650410088811975131171341205504, 'wrong 2 ** 202');
        assert(two_pow(203) == 12855504354071922204335696738729300820177623950262342682411008, 'wrong 2 ** 203');
        assert(two_pow(204) == 25711008708143844408671393477458601640355247900524685364822016, 'wrong 2 ** 204');
        assert(two_pow(205) == 51422017416287688817342786954917203280710495801049370729644032, 'wrong 2 ** 205');
        assert(two_pow(206) == 102844034832575377634685573909834406561420991602098741459288064, 'wrong 2 ** 206');
        assert(two_pow(207) == 205688069665150755269371147819668813122841983204197482918576128, 'wrong 2 ** 207');
        assert(two_pow(208) == 411376139330301510538742295639337626245683966408394965837152256, 'wrong 2 ** 208');
        assert(two_pow(209) == 822752278660603021077484591278675252491367932816789931674304512, 'wrong 2 ** 209');
        assert(two_pow(210) == 1645504557321206042154969182557350504982735865633579863348609024, 'wrong 2 ** 210');
        assert(two_pow(211) == 3291009114642412084309938365114701009965471731267159726697218048, 'wrong 2 ** 211');
        assert(two_pow(212) == 6582018229284824168619876730229402019930943462534319453394436096, 'wrong 2 ** 212');
        assert(two_pow(213) == 13164036458569648337239753460458804039861886925068638906788872192, 'wrong 2 ** 213');
        assert(two_pow(214) == 26328072917139296674479506920917608079723773850137277813577744384, 'wrong 2 ** 214');
        assert(two_pow(215) == 52656145834278593348959013841835216159447547700274555627155488768, 'wrong 2 ** 215');
        assert(two_pow(216) == 105312291668557186697918027683670432318895095400549111254310977536, 'wrong 2 ** 216');
        assert(two_pow(217) == 210624583337114373395836055367340864637790190801098222508621955072, 'wrong 2 ** 217');
        assert(two_pow(218) == 421249166674228746791672110734681729275580381602196445017243910144, 'wrong 2 ** 218');
        assert(two_pow(219) == 842498333348457493583344221469363458551160763204392890034487820288, 'wrong 2 ** 219');
        assert(two_pow(220) == 1684996666696914987166688442938726917102321526408785780068975640576, 'wrong 2 ** 220');
        assert(two_pow(221) == 3369993333393829974333376885877453834204643052817571560137951281152, 'wrong 2 ** 221');
        assert(two_pow(222) == 6739986666787659948666753771754907668409286105635143120275902562304, 'wrong 2 ** 222');
        assert(two_pow(223) == 13479973333575319897333507543509815336818572211270286240551805124608, 'wrong 2 ** 223');
        assert(two_pow(224) == 26959946667150639794667015087019630673637144422540572481103610249216, 'wrong 2 ** 224');
        assert(two_pow(225) == 53919893334301279589334030174039261347274288845081144962207220498432, 'wrong 2 ** 225');
        assert(two_pow(226) == 107839786668602559178668060348078522694548577690162289924414440996864, 'wrong 2 ** 226');
        assert(two_pow(227) == 215679573337205118357336120696157045389097155380324579848828881993728, 'wrong 2 ** 227');
        assert(two_pow(228) == 431359146674410236714672241392314090778194310760649159697657763987456, 'wrong 2 ** 228');
        assert(two_pow(229) == 862718293348820473429344482784628181556388621521298319395315527974912, 'wrong 2 ** 229');
        assert(
            two_pow(230) == 1725436586697640946858688965569256363112777243042596638790631055949824, 'wrong 2 ** 230',
        );
        assert(
            two_pow(231) == 3450873173395281893717377931138512726225554486085193277581262111899648, 'wrong 2 ** 231',
        );
        assert(
            two_pow(232) == 6901746346790563787434755862277025452451108972170386555162524223799296, 'wrong 2 ** 232',
        );
        assert(
            two_pow(233) == 13803492693581127574869511724554050904902217944340773110325048447598592, 'wrong 2 ** 233',
        );
        assert(
            two_pow(234) == 27606985387162255149739023449108101809804435888681546220650096895197184, 'wrong 2 ** 234',
        );
        assert(
            two_pow(235) == 55213970774324510299478046898216203619608871777363092441300193790394368, 'wrong 2 ** 235',
        );
        assert(
            two_pow(236) == 110427941548649020598956093796432407239217743554726184882600387580788736, 'wrong 2 ** 236',
        );
        assert(
            two_pow(237) == 220855883097298041197912187592864814478435487109452369765200775161577472, 'wrong 2 ** 237',
        );
        assert(
            two_pow(238) == 441711766194596082395824375185729628956870974218904739530401550323154944, 'wrong 2 ** 238',
        );
        assert(
            two_pow(239) == 883423532389192164791648750371459257913741948437809479060803100646309888, 'wrong 2 ** 239',
        );
        assert(
            two_pow(240) == 1766847064778384329583297500742918515827483896875618958121606201292619776, 'wrong 2 ** 240',
        );
        assert(
            two_pow(241) == 3533694129556768659166595001485837031654967793751237916243212402585239552, 'wrong 2 ** 241',
        );
        assert(
            two_pow(242) == 7067388259113537318333190002971674063309935587502475832486424805170479104, 'wrong 2 ** 242',
        );
        assert(
            two_pow(243) == 14134776518227074636666380005943348126619871175004951664972849610340958208,
            'wrong 2 ** 243',
        );
        assert(
            two_pow(244) == 28269553036454149273332760011886696253239742350009903329945699220681916416,
            'wrong 2 ** 244',
        );
        assert(
            two_pow(245) == 56539106072908298546665520023773392506479484700019806659891398441363832832,
            'wrong 2 ** 245',
        );
        assert(
            two_pow(246) == 113078212145816597093331040047546785012958969400039613319782796882727665664,
            'wrong 2 ** 246',
        );
        assert(
            two_pow(247) == 226156424291633194186662080095093570025917938800079226639565593765455331328,
            'wrong 2 ** 247',
        );
        assert(
            two_pow(248) == 452312848583266388373324160190187140051835877600158453279131187530910662656,
            'wrong 2 ** 248',
        );
        assert(
            two_pow(249) == 904625697166532776746648320380374280103671755200316906558262375061821325312,
            'wrong 2 ** 249',
        );
        assert(
            two_pow(250) == 1809251394333065553493296640760748560207343510400633813116524750123642650624,
            'wrong 2 ** 250',
        );
        assert(
            two_pow(251) == 3618502788666131106986593281521497120414687020801267626233049500247285301248,
            'wrong 2 ** 251',
        );
        assert(
            two_pow(252) == 7237005577332262213973186563042994240829374041602535252466099000494570602496,
            'wrong 2 ** 252',
        );
        assert(
            two_pow(253) == 14474011154664524427946373126085988481658748083205070504932198000989141204992,
            'wrong 2 ** 253',
        );
        assert(
            two_pow(254) == 28948022309329048855892746252171976963317496166410141009864396001978282409984,
            'wrong 2 ** 254',
        );
        assert(
            two_pow(255) == 57896044618658097711785492504343953926634992332820282019728792003956564819968,
            'wrong 2 ** 255',
        );
    }
}
