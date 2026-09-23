.class public Lcom/mycompany/app/dialog/DialogEditIcon;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic y0:I


# instance fields
.field public final a0:I

.field public final b0:I

.field public c0:Lcom/mycompany/app/main/MainActivity;

.field public d0:Landroid/content/Context;

.field public final e0:I

.field public f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

.field public g0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroid/widget/SeekBar;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Lcom/mycompany/app/view/MyButtonImage;

.field public o0:[Lcom/mycompany/app/view/MyButtonCheck;

.field public p0:Lcom/mycompany/app/view/MyPaletteView;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Lcom/mycompany/app/view/MyLineText;

.field public s0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:F

.field public x0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->c0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    const/4 p3, 0x5

    .line 18
    if-ne p2, p1, :cond_0

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 23
    .line 24
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 25
    .line 26
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 27
    .line 28
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    const/4 p1, 0x2

    .line 35
    if-ne p2, p1, :cond_1

    .line 36
    .line 37
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 38
    .line 39
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 40
    .line 41
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 42
    .line 43
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 44
    .line 45
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 46
    .line 47
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    const/4 p1, 0x3

    .line 52
    if-ne p2, p1, :cond_2

    .line 53
    .line 54
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 55
    .line 56
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 57
    .line 58
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 59
    .line 60
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 61
    .line 62
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 63
    .line 64
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_2
    const/4 p1, 0x4

    .line 69
    if-ne p2, p1, :cond_3

    .line 70
    .line 71
    sget p1, Lcom/mycompany/app/pref/PrefRead;->W:I

    .line 72
    .line 73
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 74
    .line 75
    sget p1, Lcom/mycompany/app/pref/PrefRead;->X:I

    .line 76
    .line 77
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 78
    .line 79
    sget p1, Lcom/mycompany/app/pref/PrefRead;->Y:F

    .line 80
    .line 81
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_3
    if-ne p2, p3, :cond_4

    .line 86
    .line 87
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 88
    .line 89
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 90
    .line 91
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 92
    .line 93
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 94
    .line 95
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 96
    .line 97
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_4
    const/4 p1, 0x6

    .line 102
    if-ne p2, p1, :cond_5

    .line 103
    .line 104
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->E:I

    .line 105
    .line 106
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 107
    .line 108
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->F:I

    .line 109
    .line 110
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 111
    .line 112
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->G:F

    .line 113
    .line 114
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_5
    const/4 p1, 0x7

    .line 119
    if-ne p2, p1, :cond_6

    .line 120
    .line 121
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 122
    .line 123
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 124
    .line 125
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 126
    .line 127
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 128
    .line 129
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 130
    .line 131
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_6
    const/16 p1, 0x8

    .line 136
    .line 137
    if-ne p2, p1, :cond_7

    .line 138
    .line 139
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 140
    .line 141
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 142
    .line 143
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 144
    .line 145
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 146
    .line 147
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 148
    .line 149
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    const/16 p1, 0x9

    .line 153
    .line 154
    if-ne p2, p1, :cond_8

    .line 155
    .line 156
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 157
    .line 158
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 159
    .line 160
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 161
    .line 162
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 163
    .line 164
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 165
    .line 166
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_8
    const/16 p1, 0xa

    .line 170
    .line 171
    if-ne p2, p1, :cond_9

    .line 172
    .line 173
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 174
    .line 175
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 176
    .line 177
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 178
    .line 179
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 180
    .line 181
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 182
    .line 183
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_9
    const/16 p1, 0xb

    .line 187
    .line 188
    if-ne p2, p1, :cond_a

    .line 189
    .line 190
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->p:I

    .line 191
    .line 192
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 193
    .line 194
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->q:I

    .line 195
    .line 196
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 197
    .line 198
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->r:F

    .line 199
    .line 200
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_a
    const/16 p1, 0xc

    .line 204
    .line 205
    if-ne p2, p1, :cond_b

    .line 206
    .line 207
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->t:I

    .line 208
    .line 209
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 210
    .line 211
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->u:I

    .line 212
    .line 213
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 214
    .line 215
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->v:F

    .line 216
    .line 217
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_b
    const/16 p1, 0xd

    .line 221
    .line 222
    if-ne p2, p1, :cond_c

    .line 223
    .line 224
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->x:I

    .line 225
    .line 226
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 227
    .line 228
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->y:I

    .line 229
    .line 230
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 231
    .line 232
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->z:F

    .line 233
    .line 234
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_c
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 238
    .line 239
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 240
    .line 241
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 242
    .line 243
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 244
    .line 245
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 246
    .line 247
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 248
    .line 249
    :goto_0
    const/4 p1, 0x0

    .line 250
    if-ne p2, p3, :cond_d

    .line 251
    .line 252
    const/16 v0, 0x14

    .line 253
    .line 254
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->a0:I

    .line 255
    .line 256
    const/16 v0, 0x64

    .line 257
    .line 258
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->b0:I

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_d
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->a0:I

    .line 262
    .line 263
    const/16 v0, 0x5a

    .line 264
    .line 265
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->b0:I

    .line 266
    .line 267
    :goto_1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 268
    .line 269
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->a0:I

    .line 270
    .line 271
    if-lt v0, v1, :cond_e

    .line 272
    .line 273
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->b0:I

    .line 274
    .line 275
    if-le v0, v1, :cond_10

    .line 276
    .line 277
    :cond_e
    if-ne p2, p3, :cond_f

    .line 278
    .line 279
    const/16 p1, 0x3c

    .line 280
    .line 281
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_f
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 285
    .line 286
    :cond_10
    :goto_2
    if-ne p2, p3, :cond_11

    .line 287
    .line 288
    iget p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 289
    .line 290
    iget p2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 291
    .line 292
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_11
    iget p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 300
    .line 301
    iget p2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 302
    .line 303
    invoke-static {p1, p2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 308
    .line 309
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 310
    .line 311
    if-nez p1, :cond_12

    .line 312
    .line 313
    return-void

    .line 314
    :cond_12
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditIcon$1;

    .line 315
    .line 316
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditIcon$1;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditIcon;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->a0:I

    .line 9
    .line 10
    add-int/2addr v1, p1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->x0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->x0:Z

    .line 21
    .line 22
    iput v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 23
    .line 24
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    if-ne v0, v2, :cond_3

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->g0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 75
    .line 76
    const-string v3, "%"

    .line 77
    .line 78
    invoke-static {v1, v2, v3, v0}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditIcon$11;

    .line 84
    .line 85
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/dialog/DialogEditIcon$11;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->s0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->s0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 5
    .line 6
    if-ne v3, v0, :cond_2

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 9
    .line 10
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 15
    .line 16
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 23
    .line 24
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_29

    .line 29
    .line 30
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 31
    .line 32
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 33
    .line 34
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 35
    .line 36
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 37
    .line 38
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 39
    .line 40
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 41
    .line 42
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 43
    .line 44
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->q:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, "mTtsPos"

    .line 53
    .line 54
    const-string v4, "mTtsColor"

    .line 55
    .line 56
    const-string v5, "mTtsAlpha"

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 61
    .line 62
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 66
    .line 67
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 71
    .line 72
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 89
    .line 90
    if-eqz v0, :cond_29

    .line 91
    .line 92
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_e

    .line 96
    .line 97
    :cond_2
    const/4 v0, 0x2

    .line 98
    if-ne v3, v0, :cond_5

    .line 99
    .line 100
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 101
    .line 102
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 103
    .line 104
    if-ne v0, v3, :cond_3

    .line 105
    .line 106
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 107
    .line 108
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 109
    .line 110
    if-ne v0, v3, :cond_3

    .line 111
    .line 112
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 113
    .line 114
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 115
    .line 116
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_29

    .line 121
    .line 122
    :cond_3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 123
    .line 124
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 125
    .line 126
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 127
    .line 128
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 129
    .line 130
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 131
    .line 132
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 133
    .line 134
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 135
    .line 136
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->u:I

    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v3, "mZoomPos"

    .line 145
    .line 146
    const-string v4, "mZoomColor"

    .line 147
    .line 148
    const-string v5, "mZoomAlpha"

    .line 149
    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 153
    .line 154
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 158
    .line 159
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 163
    .line 164
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 181
    .line 182
    if-eqz v0, :cond_29

    .line 183
    .line 184
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_e

    .line 188
    .line 189
    :cond_5
    const/4 v0, 0x3

    .line 190
    if-ne v3, v0, :cond_8

    .line 191
    .line 192
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 193
    .line 194
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 195
    .line 196
    if-ne v0, v3, :cond_6

    .line 197
    .line 198
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 199
    .line 200
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 201
    .line 202
    if-ne v0, v3, :cond_6

    .line 203
    .line 204
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 205
    .line 206
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 207
    .line 208
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_29

    .line 213
    .line 214
    :cond_6
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 215
    .line 216
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 217
    .line 218
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 219
    .line 220
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 221
    .line 222
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 223
    .line 224
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 225
    .line 226
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 227
    .line 228
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->y:I

    .line 229
    .line 230
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v3, "mYpipPos"

    .line 237
    .line 238
    const-string v4, "mYpipColor"

    .line 239
    .line 240
    const-string v5, "mYpipAlpha"

    .line 241
    .line 242
    if-eqz p1, :cond_7

    .line 243
    .line 244
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 245
    .line 246
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 250
    .line 251
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 255
    .line 256
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_7
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :goto_2
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 273
    .line 274
    if-eqz v0, :cond_29

    .line 275
    .line 276
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_e

    .line 280
    .line 281
    :cond_8
    const/4 v0, 0x4

    .line 282
    if-ne v3, v0, :cond_b

    .line 283
    .line 284
    sget v0, Lcom/mycompany/app/pref/PrefRead;->W:I

    .line 285
    .line 286
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 287
    .line 288
    if-ne v0, v3, :cond_9

    .line 289
    .line 290
    sget v0, Lcom/mycompany/app/pref/PrefRead;->X:I

    .line 291
    .line 292
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 293
    .line 294
    if-ne v0, v3, :cond_9

    .line 295
    .line 296
    sget v0, Lcom/mycompany/app/pref/PrefRead;->Y:F

    .line 297
    .line 298
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 299
    .line 300
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_29

    .line 305
    .line 306
    :cond_9
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 307
    .line 308
    sput v0, Lcom/mycompany/app/pref/PrefRead;->W:I

    .line 309
    .line 310
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 311
    .line 312
    sput v0, Lcom/mycompany/app/pref/PrefRead;->X:I

    .line 313
    .line 314
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 315
    .line 316
    sput v0, Lcom/mycompany/app/pref/PrefRead;->Y:F

    .line 317
    .line 318
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 319
    .line 320
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    const-string v3, "mReadPos"

    .line 325
    .line 326
    const-string v4, "mReadColor"

    .line 327
    .line 328
    const-string v5, "mReadAlpha"

    .line 329
    .line 330
    if-eqz p1, :cond_a

    .line 331
    .line 332
    sget v6, Lcom/mycompany/app/pref/PrefRead;->W:I

    .line 333
    .line 334
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    sget v5, Lcom/mycompany/app/pref/PrefRead;->X:I

    .line 338
    .line 339
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sget v4, Lcom/mycompany/app/pref/PrefRead;->Y:F

    .line 343
    .line 344
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_a
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :goto_3
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 361
    .line 362
    if-eqz v0, :cond_29

    .line 363
    .line 364
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_e

    .line 368
    .line 369
    :cond_b
    const/4 v0, 0x5

    .line 370
    if-ne v3, v0, :cond_e

    .line 371
    .line 372
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 373
    .line 374
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 375
    .line 376
    if-ne v0, v2, :cond_c

    .line 377
    .line 378
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 379
    .line 380
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 381
    .line 382
    if-ne v0, v2, :cond_c

    .line 383
    .line 384
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 385
    .line 386
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 387
    .line 388
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_29

    .line 393
    .line 394
    :cond_c
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 395
    .line 396
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 397
    .line 398
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 399
    .line 400
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 401
    .line 402
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 403
    .line 404
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 405
    .line 406
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 407
    .line 408
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 409
    .line 410
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 411
    .line 412
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    const-string v2, "mScrFilPos"

    .line 417
    .line 418
    const-string v3, "mScrFilColor"

    .line 419
    .line 420
    const-string v4, "mScrFilAlpha"

    .line 421
    .line 422
    if-eqz p1, :cond_d

    .line 423
    .line 424
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->A:I

    .line 425
    .line 426
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->B:I

    .line 430
    .line 431
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->C:F

    .line 435
    .line 436
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_d
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    :goto_4
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 450
    .line 451
    .line 452
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 453
    .line 454
    if-eqz v0, :cond_29

    .line 455
    .line 456
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->D:I

    .line 457
    .line 458
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_e

    .line 462
    .line 463
    :cond_e
    const/4 v0, 0x6

    .line 464
    if-ne v3, v0, :cond_11

    .line 465
    .line 466
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->E:I

    .line 467
    .line 468
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 469
    .line 470
    if-ne v0, v3, :cond_f

    .line 471
    .line 472
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->F:I

    .line 473
    .line 474
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 475
    .line 476
    if-ne v0, v3, :cond_f

    .line 477
    .line 478
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->G:F

    .line 479
    .line 480
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 481
    .line 482
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_29

    .line 487
    .line 488
    :cond_f
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 489
    .line 490
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->E:I

    .line 491
    .line 492
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 493
    .line 494
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->F:I

    .line 495
    .line 496
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 497
    .line 498
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->G:F

    .line 499
    .line 500
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 501
    .line 502
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->H:I

    .line 503
    .line 504
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 505
    .line 506
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    const-string v3, "mGridPos"

    .line 511
    .line 512
    const-string v4, "mGridColor"

    .line 513
    .line 514
    const-string v5, "mGridAlpha"

    .line 515
    .line 516
    if-eqz p1, :cond_10

    .line 517
    .line 518
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->E:I

    .line 519
    .line 520
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->F:I

    .line 524
    .line 525
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->G:F

    .line 529
    .line 530
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 531
    .line 532
    .line 533
    goto :goto_5

    .line 534
    :cond_10
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    :goto_5
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 547
    .line 548
    if-eqz v0, :cond_29

    .line 549
    .line 550
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_e

    .line 554
    .line 555
    :cond_11
    const/4 v0, 0x7

    .line 556
    if-ne v3, v0, :cond_14

    .line 557
    .line 558
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 559
    .line 560
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 561
    .line 562
    if-ne v0, v3, :cond_12

    .line 563
    .line 564
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 565
    .line 566
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 567
    .line 568
    if-ne v0, v3, :cond_12

    .line 569
    .line 570
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 571
    .line 572
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 573
    .line 574
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_29

    .line 579
    .line 580
    :cond_12
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 581
    .line 582
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 583
    .line 584
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 585
    .line 586
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 587
    .line 588
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 589
    .line 590
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 591
    .line 592
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 593
    .line 594
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->N:I

    .line 595
    .line 596
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 597
    .line 598
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    const-string v3, "mNewsPos"

    .line 603
    .line 604
    const-string v4, "mNewsColor"

    .line 605
    .line 606
    const-string v5, "mNewsAlpha"

    .line 607
    .line 608
    if-eqz p1, :cond_13

    .line 609
    .line 610
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 611
    .line 612
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 613
    .line 614
    .line 615
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 616
    .line 617
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 618
    .line 619
    .line 620
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 621
    .line 622
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 623
    .line 624
    .line 625
    goto :goto_6

    .line 626
    :cond_13
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :goto_6
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 636
    .line 637
    .line 638
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 639
    .line 640
    if-eqz v0, :cond_29

    .line 641
    .line 642
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_e

    .line 646
    .line 647
    :cond_14
    const/16 v0, 0x8

    .line 648
    .line 649
    if-ne v3, v0, :cond_17

    .line 650
    .line 651
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 652
    .line 653
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 654
    .line 655
    if-ne v0, v3, :cond_15

    .line 656
    .line 657
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 658
    .line 659
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 660
    .line 661
    if-ne v0, v3, :cond_15

    .line 662
    .line 663
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 664
    .line 665
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 666
    .line 667
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-eqz v0, :cond_29

    .line 672
    .line 673
    :cond_15
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 674
    .line 675
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 676
    .line 677
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 678
    .line 679
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 680
    .line 681
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 682
    .line 683
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 684
    .line 685
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 686
    .line 687
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->R:I

    .line 688
    .line 689
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 690
    .line 691
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    const-string v3, "mHandPos"

    .line 696
    .line 697
    const-string v4, "mHandColor"

    .line 698
    .line 699
    const-string v5, "mHandAlpha"

    .line 700
    .line 701
    if-eqz p1, :cond_16

    .line 702
    .line 703
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 704
    .line 705
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 706
    .line 707
    .line 708
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 709
    .line 710
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 711
    .line 712
    .line 713
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 714
    .line 715
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 716
    .line 717
    .line 718
    goto :goto_7

    .line 719
    :cond_16
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    :goto_7
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 729
    .line 730
    .line 731
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 732
    .line 733
    if-eqz v0, :cond_29

    .line 734
    .line 735
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_e

    .line 739
    .line 740
    :cond_17
    const/16 v0, 0x9

    .line 741
    .line 742
    if-ne v3, v0, :cond_1a

    .line 743
    .line 744
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 745
    .line 746
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 747
    .line 748
    if-ne v0, v3, :cond_18

    .line 749
    .line 750
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 751
    .line 752
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 753
    .line 754
    if-ne v0, v3, :cond_18

    .line 755
    .line 756
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 757
    .line 758
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 759
    .line 760
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    if-eqz v0, :cond_29

    .line 765
    .line 766
    :cond_18
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 767
    .line 768
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 769
    .line 770
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 771
    .line 772
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 773
    .line 774
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 775
    .line 776
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 777
    .line 778
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 779
    .line 780
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->V:I

    .line 781
    .line 782
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 783
    .line 784
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    const-string v3, "mPassPos"

    .line 789
    .line 790
    const-string v4, "mPassColor"

    .line 791
    .line 792
    const-string v5, "mPassAlpha"

    .line 793
    .line 794
    if-eqz p1, :cond_19

    .line 795
    .line 796
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 797
    .line 798
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 799
    .line 800
    .line 801
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 802
    .line 803
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 804
    .line 805
    .line 806
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 807
    .line 808
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 809
    .line 810
    .line 811
    goto :goto_8

    .line 812
    :cond_19
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    :goto_8
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 822
    .line 823
    .line 824
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 825
    .line 826
    if-eqz v0, :cond_29

    .line 827
    .line 828
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_e

    .line 832
    .line 833
    :cond_1a
    const/16 v0, 0xa

    .line 834
    .line 835
    if-ne v3, v0, :cond_1d

    .line 836
    .line 837
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 838
    .line 839
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 840
    .line 841
    if-ne v0, v3, :cond_1b

    .line 842
    .line 843
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 844
    .line 845
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 846
    .line 847
    if-ne v0, v3, :cond_1b

    .line 848
    .line 849
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 850
    .line 851
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 852
    .line 853
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-eqz v0, :cond_29

    .line 858
    .line 859
    :cond_1b
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 860
    .line 861
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 862
    .line 863
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 864
    .line 865
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 866
    .line 867
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 868
    .line 869
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 870
    .line 871
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 872
    .line 873
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->Z:I

    .line 874
    .line 875
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 876
    .line 877
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    const-string v3, "mTrnsPos"

    .line 882
    .line 883
    const-string v4, "mTrnsColor"

    .line 884
    .line 885
    const-string v5, "mTrnsAlpha"

    .line 886
    .line 887
    if-eqz p1, :cond_1c

    .line 888
    .line 889
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 890
    .line 891
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 892
    .line 893
    .line 894
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 895
    .line 896
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 897
    .line 898
    .line 899
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 900
    .line 901
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 902
    .line 903
    .line 904
    goto :goto_9

    .line 905
    :cond_1c
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    :goto_9
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 915
    .line 916
    .line 917
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 918
    .line 919
    if-eqz v0, :cond_29

    .line 920
    .line 921
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 922
    .line 923
    .line 924
    goto/16 :goto_e

    .line 925
    .line 926
    :cond_1d
    const/16 v0, 0xb

    .line 927
    .line 928
    if-ne v3, v0, :cond_20

    .line 929
    .line 930
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->p:I

    .line 931
    .line 932
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 933
    .line 934
    if-ne v0, v3, :cond_1e

    .line 935
    .line 936
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->q:I

    .line 937
    .line 938
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 939
    .line 940
    if-ne v0, v3, :cond_1e

    .line 941
    .line 942
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->r:F

    .line 943
    .line 944
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 945
    .line 946
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    if-eqz v0, :cond_29

    .line 951
    .line 952
    :cond_1e
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 953
    .line 954
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->p:I

    .line 955
    .line 956
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 957
    .line 958
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->q:I

    .line 959
    .line 960
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 961
    .line 962
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->r:F

    .line 963
    .line 964
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 965
    .line 966
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->s:I

    .line 967
    .line 968
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 969
    .line 970
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefFloat;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefFloat;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    const-string v3, "mFlt1Pos"

    .line 975
    .line 976
    const-string v4, "mFlt1Color"

    .line 977
    .line 978
    const-string v5, "mFlt1Alpha"

    .line 979
    .line 980
    if-eqz p1, :cond_1f

    .line 981
    .line 982
    sget v6, Lcom/mycompany/app/pref/PrefFloat;->p:I

    .line 983
    .line 984
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 985
    .line 986
    .line 987
    sget v5, Lcom/mycompany/app/pref/PrefFloat;->q:I

    .line 988
    .line 989
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 990
    .line 991
    .line 992
    sget v4, Lcom/mycompany/app/pref/PrefFloat;->r:F

    .line 993
    .line 994
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 995
    .line 996
    .line 997
    goto :goto_a

    .line 998
    :cond_1f
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    :goto_a
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 1008
    .line 1009
    .line 1010
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 1011
    .line 1012
    if-eqz v0, :cond_29

    .line 1013
    .line 1014
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    goto/16 :goto_e

    .line 1018
    .line 1019
    :cond_20
    const/16 v0, 0xc

    .line 1020
    .line 1021
    if-ne v3, v0, :cond_23

    .line 1022
    .line 1023
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->t:I

    .line 1024
    .line 1025
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 1026
    .line 1027
    if-ne v0, v3, :cond_21

    .line 1028
    .line 1029
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->u:I

    .line 1030
    .line 1031
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 1032
    .line 1033
    if-ne v0, v3, :cond_21

    .line 1034
    .line 1035
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->v:F

    .line 1036
    .line 1037
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 1038
    .line 1039
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-eqz v0, :cond_29

    .line 1044
    .line 1045
    :cond_21
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 1046
    .line 1047
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->t:I

    .line 1048
    .line 1049
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 1050
    .line 1051
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->u:I

    .line 1052
    .line 1053
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 1054
    .line 1055
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->v:F

    .line 1056
    .line 1057
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 1058
    .line 1059
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->w:I

    .line 1060
    .line 1061
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 1062
    .line 1063
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefFloat;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefFloat;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    const-string v3, "mFlt2Pos"

    .line 1068
    .line 1069
    const-string v4, "mFlt2Color"

    .line 1070
    .line 1071
    const-string v5, "mFlt2Alpha"

    .line 1072
    .line 1073
    if-eqz p1, :cond_22

    .line 1074
    .line 1075
    sget v6, Lcom/mycompany/app/pref/PrefFloat;->t:I

    .line 1076
    .line 1077
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    sget v5, Lcom/mycompany/app/pref/PrefFloat;->u:I

    .line 1081
    .line 1082
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    sget v4, Lcom/mycompany/app/pref/PrefFloat;->v:F

    .line 1086
    .line 1087
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_b

    .line 1091
    :cond_22
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    :goto_b
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 1101
    .line 1102
    .line 1103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 1104
    .line 1105
    if-eqz v0, :cond_29

    .line 1106
    .line 1107
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_e

    .line 1111
    .line 1112
    :cond_23
    const/16 v0, 0xd

    .line 1113
    .line 1114
    if-ne v3, v0, :cond_26

    .line 1115
    .line 1116
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->x:I

    .line 1117
    .line 1118
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 1119
    .line 1120
    if-ne v0, v3, :cond_24

    .line 1121
    .line 1122
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->y:I

    .line 1123
    .line 1124
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 1125
    .line 1126
    if-ne v0, v3, :cond_24

    .line 1127
    .line 1128
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->z:F

    .line 1129
    .line 1130
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 1131
    .line 1132
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 1133
    .line 1134
    .line 1135
    move-result v0

    .line 1136
    if-eqz v0, :cond_29

    .line 1137
    .line 1138
    :cond_24
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 1139
    .line 1140
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->x:I

    .line 1141
    .line 1142
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 1143
    .line 1144
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->y:I

    .line 1145
    .line 1146
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 1147
    .line 1148
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->z:F

    .line 1149
    .line 1150
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 1151
    .line 1152
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->A:I

    .line 1153
    .line 1154
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 1155
    .line 1156
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefFloat;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefFloat;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    const-string v3, "mFlt3Pos"

    .line 1161
    .line 1162
    const-string v4, "mFlt3Color"

    .line 1163
    .line 1164
    const-string v5, "mFlt3Alpha"

    .line 1165
    .line 1166
    if-eqz p1, :cond_25

    .line 1167
    .line 1168
    sget v6, Lcom/mycompany/app/pref/PrefFloat;->x:I

    .line 1169
    .line 1170
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    sget v5, Lcom/mycompany/app/pref/PrefFloat;->y:I

    .line 1174
    .line 1175
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    sget v4, Lcom/mycompany/app/pref/PrefFloat;->z:F

    .line 1179
    .line 1180
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 1181
    .line 1182
    .line 1183
    goto :goto_c

    .line 1184
    :cond_25
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    :goto_c
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 1194
    .line 1195
    .line 1196
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 1197
    .line 1198
    if-eqz v0, :cond_29

    .line 1199
    .line 1200
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    goto :goto_e

    .line 1204
    :cond_26
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 1205
    .line 1206
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 1207
    .line 1208
    if-ne v0, v3, :cond_27

    .line 1209
    .line 1210
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 1211
    .line 1212
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 1213
    .line 1214
    if-ne v0, v3, :cond_27

    .line 1215
    .line 1216
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 1217
    .line 1218
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 1219
    .line 1220
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 1221
    .line 1222
    .line 1223
    move-result v0

    .line 1224
    if-eqz v0, :cond_29

    .line 1225
    .line 1226
    :cond_27
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 1227
    .line 1228
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 1229
    .line 1230
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 1231
    .line 1232
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 1233
    .line 1234
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 1235
    .line 1236
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 1237
    .line 1238
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 1239
    .line 1240
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->m:I

    .line 1241
    .line 1242
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 1243
    .line 1244
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    const-string v3, "mIconPos"

    .line 1249
    .line 1250
    const-string v4, "mIconColor"

    .line 1251
    .line 1252
    const-string v5, "mIconAlpha"

    .line 1253
    .line 1254
    if-eqz p1, :cond_28

    .line 1255
    .line 1256
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 1257
    .line 1258
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 1262
    .line 1263
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 1267
    .line 1268
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_d

    .line 1272
    :cond_28
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    :goto_d
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 1282
    .line 1283
    .line 1284
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 1285
    .line 1286
    if-eqz v0, :cond_29

    .line 1287
    .line 1288
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    :cond_29
    :goto_e
    if-eqz p1, :cond_2a

    .line 1292
    .line 1293
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 1294
    .line 1295
    .line 1296
    :cond_2a
    return-void
.end method

.method public final E()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x5

    .line 8
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 9
    .line 10
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 13
    .line 14
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->o1(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 29
    .line 30
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->g0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 50
    .line 51
    invoke-interface {v0, v2}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x1

    .line 61
    if-ne v1, v0, :cond_5

    .line 62
    .line 63
    sget-object v0, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 64
    .line 65
    array-length v0, v0

    .line 66
    move v1, v2

    .line 67
    :goto_1
    if-ge v1, v0, :cond_7

    .line 68
    .line 69
    iget v4, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 70
    .line 71
    sget-object v5, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 72
    .line 73
    aget v5, v5, v1

    .line 74
    .line 75
    if-ne v4, v5, :cond_4

    .line 76
    .line 77
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 78
    .line 79
    aget-object v4, v4, v1

    .line 80
    .line 81
    invoke-virtual {v4, v3, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 86
    .line 87
    aget-object v4, v4, v1

    .line 88
    .line 89
    invoke-virtual {v4, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 90
    .line 91
    .line 92
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    sget-object v0, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 96
    .line 97
    array-length v0, v0

    .line 98
    move v1, v2

    .line 99
    :goto_3
    if-ge v1, v0, :cond_7

    .line 100
    .line 101
    iget v4, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 102
    .line 103
    sget-object v5, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 104
    .line 105
    aget v5, v5, v1

    .line 106
    .line 107
    if-ne v4, v5, :cond_6

    .line 108
    .line 109
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 110
    .line 111
    aget-object v4, v4, v1

    .line 112
    .line 113
    invoke-virtual {v4, v3, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 118
    .line 119
    aget-object v4, v4, v1

    .line 120
    .line 121
    invoke-virtual {v4, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 122
    .line 123
    .line 124
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    :goto_5
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditIcon;->C()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 41
    .line 42
    if-eqz v1, :cond_6

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    :goto_0
    if-ge v0, v1, :cond_5

    .line 46
    .line 47
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 48
    .line 49
    aget-object v3, v3, v0

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 57
    .line 58
    aput-object v2, v3, v0

    .line 59
    .line 60
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 64
    .line 65
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPaletteView;->a()V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 73
    .line 74
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 82
    .line 83
    :cond_8
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->c0:Lcom/mycompany/app/main/MainActivity;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->f0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->g0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 104
    .line 105
    .line 106
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 107
    .line 108
    :cond_9
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 109
    .line 110
    .line 111
    return-void
.end method
