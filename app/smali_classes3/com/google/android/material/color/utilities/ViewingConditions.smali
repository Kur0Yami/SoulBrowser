.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    const-wide v0, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 7
    .line 8
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->a(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    mul-double/2addr v4, v0

    .line 13
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 14
    .line 15
    div-double/2addr v4, v0

    .line 16
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sget-object v8, Lcom/google/android/material/color/utilities/ColorUtils;->a:[D

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    aget-wide v10, v8, v9

    .line 29
    .line 30
    sget-object v12, Lcom/google/android/material/color/utilities/Cam16;->a:[[D

    .line 31
    .line 32
    aget-object v13, v12, v9

    .line 33
    .line 34
    aget-wide v14, v13, v9

    .line 35
    .line 36
    mul-double/2addr v14, v10

    .line 37
    const/16 v16, 0x1

    .line 38
    .line 39
    aget-wide v17, v8, v16

    .line 40
    .line 41
    aget-wide v19, v13, v16

    .line 42
    .line 43
    mul-double v19, v19, v17

    .line 44
    .line 45
    add-double v19, v19, v14

    .line 46
    .line 47
    const/4 v14, 0x2

    .line 48
    aget-wide v21, v8, v14

    .line 49
    .line 50
    aget-wide v23, v13, v14

    .line 51
    .line 52
    mul-double v23, v23, v21

    .line 53
    .line 54
    add-double v23, v23, v19

    .line 55
    .line 56
    aget-object v13, v12, v16

    .line 57
    .line 58
    aget-wide v19, v13, v9

    .line 59
    .line 60
    mul-double v19, v19, v10

    .line 61
    .line 62
    aget-wide v25, v13, v16

    .line 63
    .line 64
    mul-double v25, v25, v17

    .line 65
    .line 66
    add-double v25, v25, v19

    .line 67
    .line 68
    aget-wide v19, v13, v14

    .line 69
    .line 70
    mul-double v19, v19, v21

    .line 71
    .line 72
    add-double v19, v19, v25

    .line 73
    .line 74
    aget-object v12, v12, v14

    .line 75
    .line 76
    aget-wide v25, v12, v9

    .line 77
    .line 78
    mul-double v10, v10, v25

    .line 79
    .line 80
    aget-wide v25, v12, v16

    .line 81
    .line 82
    mul-double v17, v17, v25

    .line 83
    .line 84
    add-double v17, v17, v10

    .line 85
    .line 86
    aget-wide v10, v12, v14

    .line 87
    .line 88
    mul-double v21, v21, v10

    .line 89
    .line 90
    add-double v21, v21, v17

    .line 91
    .line 92
    neg-double v10, v4

    .line 93
    const-wide/high16 v12, 0x4045000000000000L    # 42.0

    .line 94
    .line 95
    sub-double/2addr v10, v12

    .line 96
    const-wide/high16 v12, 0x4057000000000000L    # 92.0

    .line 97
    .line 98
    div-double/2addr v10, v12

    .line 99
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v10

    .line 103
    const-wide v12, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    mul-double/2addr v10, v12

    .line 109
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 110
    .line 111
    sub-double v10, v12, v10

    .line 112
    .line 113
    mul-double/2addr v10, v12

    .line 114
    const-wide/16 v17, 0x0

    .line 115
    .line 116
    cmpg-double v15, v10, v17

    .line 117
    .line 118
    if-gez v15, :cond_0

    .line 119
    .line 120
    move-wide/from16 v10, v17

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    cmpl-double v15, v10, v12

    .line 124
    .line 125
    if-lez v15, :cond_1

    .line 126
    .line 127
    move-wide v10, v12

    .line 128
    :cond_1
    :goto_0
    div-double v17, v0, v23

    .line 129
    .line 130
    mul-double v17, v17, v10

    .line 131
    .line 132
    add-double v17, v17, v12

    .line 133
    .line 134
    sub-double v17, v17, v10

    .line 135
    .line 136
    div-double v25, v0, v19

    .line 137
    .line 138
    mul-double v25, v25, v10

    .line 139
    .line 140
    add-double v25, v25, v12

    .line 141
    .line 142
    sub-double v25, v25, v10

    .line 143
    .line 144
    div-double v27, v0, v21

    .line 145
    .line 146
    mul-double v27, v27, v10

    .line 147
    .line 148
    add-double v27, v27, v12

    .line 149
    .line 150
    sub-double v27, v27, v10

    .line 151
    .line 152
    const/4 v10, 0x3

    .line 153
    new-array v10, v10, [D

    .line 154
    .line 155
    aput-wide v17, v10, v9

    .line 156
    .line 157
    aput-wide v25, v10, v16

    .line 158
    .line 159
    aput-wide v27, v10, v14

    .line 160
    .line 161
    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    .line 162
    .line 163
    mul-double v17, v17, v4

    .line 164
    .line 165
    add-double v25, v17, v12

    .line 166
    .line 167
    div-double v25, v12, v25

    .line 168
    .line 169
    mul-double v27, v25, v25

    .line 170
    .line 171
    mul-double v27, v27, v25

    .line 172
    .line 173
    mul-double v27, v27, v25

    .line 174
    .line 175
    sub-double v12, v12, v27

    .line 176
    .line 177
    mul-double v27, v27, v4

    .line 178
    .line 179
    mul-double/2addr v6, v12

    .line 180
    mul-double/2addr v6, v12

    .line 181
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cbrt(D)D

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    mul-double/2addr v4, v6

    .line 186
    add-double v4, v4, v27

    .line 187
    .line 188
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->a(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v2

    .line 192
    aget-wide v6, v8, v16

    .line 193
    .line 194
    div-double/2addr v2, v6

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 196
    .line 197
    .line 198
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 204
    .line 205
    .line 206
    aget-wide v2, v10, v9

    .line 207
    .line 208
    mul-double/2addr v2, v4

    .line 209
    mul-double v2, v2, v23

    .line 210
    .line 211
    div-double/2addr v2, v0

    .line 212
    const-wide v6, 0x3fdae147ae147ae1L    # 0.42

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 218
    .line 219
    .line 220
    aget-wide v2, v10, v16

    .line 221
    .line 222
    mul-double/2addr v2, v4

    .line 223
    mul-double v2, v2, v19

    .line 224
    .line 225
    div-double/2addr v2, v0

    .line 226
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 227
    .line 228
    .line 229
    aget-wide v2, v10, v14

    .line 230
    .line 231
    mul-double/2addr v2, v4

    .line 232
    mul-double v2, v2, v21

    .line 233
    .line 234
    div-double/2addr v2, v0

    .line 235
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 236
    .line 237
    .line 238
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 239
    .line 240
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public constructor <init>(DDDDDD[DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
