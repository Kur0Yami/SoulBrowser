.class final Lcom/google/android/gms/internal/play_billing/zzfm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/zzhp;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfm;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfm;->c()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/play_billing/zzis;ILjava/lang/Object;)I
    .locals 4

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzis;->h:Lcom/google/android/gms/internal/play_billing/zzis;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    add-int/2addr p1, p1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzis;->g:Lcom/google/android/gms/internal/play_billing/zzis;

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzit;->c:Lcom/google/android/gms/internal/play_billing/zzit;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v0, 0x4

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    add-long v2, v0, v0

    .line 41
    .line 42
    const/16 p0, 0x3f

    .line 43
    .line 44
    shr-long/2addr v0, p0

    .line 45
    xor-long/2addr v0, v2

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->y(J)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    add-int p2, p0, p0

    .line 59
    .line 60
    shr-int/lit8 p0, p0, 0x1f

    .line 61
    .line 62
    xor-int/2addr p0, p2

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 75
    .line 76
    :goto_0
    move v0, v1

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :pswitch_4
    instance-of p0, p2, Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 89
    .line 90
    if-eqz p0, :cond_1

    .line 91
    .line 92
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 93
    .line 94
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    int-to-long v0, p0

    .line 99
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->y(J)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    int-to-long v0, p0

    .line 112
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->y(J)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_6
    instance-of p0, p2, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 131
    .line 132
    if-eqz p0, :cond_2

    .line 133
    .line 134
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 135
    .line 136
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzev;->i()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    :goto_1
    add-int v0, p2, p0

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :cond_2
    check-cast p2, [B

    .line 151
    .line 152
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 153
    .line 154
    array-length p0, p2

    .line 155
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    goto :goto_1

    .line 160
    :pswitch_7
    instance-of p0, p2, Lcom/google/android/gms/internal/play_billing/zzgi;

    .line 161
    .line 162
    if-eqz p0, :cond_3

    .line 163
    .line 164
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgi;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgj;->a()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    goto :goto_1

    .line 175
    :cond_3
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 176
    .line 177
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 178
    .line 179
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzhc;->zzn()I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    goto :goto_1

    .line 188
    :pswitch_8
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 189
    .line 190
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzhc;->zzn()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :pswitch_9
    instance-of p0, p2, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 197
    .line 198
    if-eqz p0, :cond_4

    .line 199
    .line 200
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 201
    .line 202
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzev;->i()I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    goto :goto_1

    .line 213
    :cond_4
    check-cast p2, Ljava/lang/String;

    .line 214
    .line 215
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 216
    .line 217
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzio;->b(Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    goto :goto_1

    .line 226
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 232
    .line 233
    const/4 v0, 0x1

    .line 234
    goto :goto_2

    .line 235
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    int-to-long v0, p0

    .line 259
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->y(J)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    goto :goto_2

    .line 264
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v0

    .line 270
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->y(J)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    goto :goto_2

    .line 275
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v0

    .line 281
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->y(J)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    goto :goto_2

    .line 286
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    .line 295
    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    sget-boolean p0, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :goto_2
    add-int/2addr p1, v0

    .line 304
    return p1

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Lcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzis;ILjava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzis;->h:Lcom/google/android/gms/internal/play_billing/zzis;

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/zzis;->f:I

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzfc;->s(II)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzit;->c:Lcom/google/android/gms/internal/play_billing/zzit;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    add-long v0, p1, p1

    .line 27
    .line 28
    const/16 p3, 0x3f

    .line 29
    .line 30
    shr-long/2addr p1, p3

    .line 31
    xor-long/2addr p1, v0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->w(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int p2, p1, p1

    .line 43
    .line 44
    shr-int/lit8 p1, p1, 0x1f

    .line 45
    .line 46
    xor-int/2addr p1, p2

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->u(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->k(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->i(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 76
    .line 77
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->m(I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->m(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->u(I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 106
    .line 107
    if-eqz p1, :cond_1

    .line 108
    .line 109
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 110
    .line 111
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->g(Lcom/google/android/gms/internal/play_billing/zzev;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    check-cast p3, [B

    .line 116
    .line 117
    array-length p1, p3

    .line 118
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->e([BI)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 123
    .line 124
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->n(Lcom/google/android/gms/internal/play_billing/zzhc;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 129
    .line 130
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/play_billing/zzhc;->a(Lcom/google/android/gms/internal/play_billing/zzfc;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 135
    .line 136
    if-eqz p1, :cond_2

    .line 137
    .line 138
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 139
    .line 140
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->g(Lcom/google/android/gms/internal/play_billing/zzev;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_2
    check-cast p3, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->r(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->c(B)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->i(I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 173
    .line 174
    .line 175
    move-result-wide p1

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->k(J)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->m(I)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide p1

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->w(J)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 203
    .line 204
    .line 205
    move-result-wide p1

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->w(J)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    .line 211
    .line 212
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->i(I)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    .line 225
    .line 226
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 227
    .line 228
    .line 229
    move-result-wide p1

    .line 230
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 231
    .line 232
    .line 233
    move-result-wide p1

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->k(J)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 239
    .line 240
    const/4 p1, 0x3

    .line 241
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->s(II)V

    .line 242
    .line 243
    .line 244
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/play_billing/zzhc;->a(Lcom/google/android/gms/internal/play_billing/zzfc;)V

    .line 245
    .line 246
    .line 247
    const/4 p1, 0x4

    .line 248
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->s(II)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzfl;->zzc()Lcom/google/android/gms/internal/play_billing/zzit;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public static final g(Ljava/util/Map$Entry;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfl;->zzc()Lcom/google/android/gms/internal/play_billing/zzit;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method


# virtual methods
.method public final b()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzgg;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhs;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhs;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgg;-><init>(Ljava/util/Iterator;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhs;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhs;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->f:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->d(I)Ljava/util/Map$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzhq;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/zzhq;->f:Ljava/lang/Object;

    .line 20
    .line 21
    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfv;->p()V

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->b()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzfv;->p()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhp;->a()V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->b:Z

    .line 72
    .line 73
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 7
    .line 8
    iget v2, v1, Lcom/google/android/gms/internal/play_billing/zzhu;->f:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-gtz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->b()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->c:Z

    .line 28
    .line 29
    iput-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzfm;->c:Z

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzfl;->zze()Z

    .line 48
    .line 49
    .line 50
    throw v3

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->d(I)Ljava/util/Map$Entry;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhq;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzhq;->c:Ljava/lang/Comparable;

    .line 59
    .line 60
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfl;->zze()Z

    .line 63
    .line 64
    .line 65
    throw v3
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->f:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->b()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfm;->f(Ljava/util/Map$Entry;)Z

    .line 31
    .line 32
    .line 33
    throw v2

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->d(I)Ljava/util/Map$Entry;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfm;->f(Ljava/util/Map$Entry;)Z

    .line 40
    .line 41
    .line 42
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
