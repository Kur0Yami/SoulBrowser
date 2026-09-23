.class Lcom/mycompany/app/dialog/DialogViewTrans$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$29;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$29;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_5

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->G0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    const v3, 0x3ecccccd    # 0.4f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 25
    .line 26
    const/high16 v3, -0x1000000

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->G0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    const v4, -0x4f4f50

    .line 33
    .line 34
    .line 35
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 36
    .line 37
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_dark_24:I

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_dark_24:I

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_dark_24:I

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_dark_24:I

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    const v4, -0xafafb0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    const v4, -0xc0c0c1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->G0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 133
    .line 134
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 135
    .line 136
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_black_24:I

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_black_24:I

    .line 149
    .line 150
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_black_24:I

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 161
    .line 162
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 163
    .line 164
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_black_24:I

    .line 170
    .line 171
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    const v4, -0x70708

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 183
    .line 184
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 193
    .line 194
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 198
    .line 199
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 203
    .line 204
    const v4, -0x1f1f20

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 226
    .line 227
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 228
    .line 229
    .line 230
    :goto_0
    const/16 v1, -0x4d2

    .line 231
    .line 232
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->y0:I

    .line 233
    .line 234
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->B0:Z

    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 237
    .line 238
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 239
    .line 240
    const/4 v1, 0x1

    .line 241
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogViewTrans;->H(Z)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_3

    .line 246
    .line 247
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 248
    .line 249
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 250
    .line 251
    if-eqz v4, :cond_2

    .line 252
    .line 253
    const v3, -0x50506

    .line 254
    .line 255
    .line 256
    :cond_2
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyButtonImage;->o(IZ)V

    .line 257
    .line 258
    .line 259
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 260
    .line 261
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$30;

    .line 262
    .line 263
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$30;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 270
    .line 271
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$31;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$31;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 280
    .line 281
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$32;

    .line 282
    .line 283
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$32;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 290
    .line 291
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$33;

    .line 292
    .line 293
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$33;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 300
    .line 301
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$34;

    .line 302
    .line 303
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$34;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 310
    .line 311
    const/high16 v2, 0x42900000    # 72.0f

    .line 312
    .line 313
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    float-to-int v1, v1

    .line 318
    new-instance v2, Landroid/widget/PopupWindow;

    .line 319
    .line 320
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->G0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 321
    .line 322
    const/4 v4, -0x1

    .line 323
    invoke-direct {v2, v3, v4, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 324
    .line 325
    .line 326
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 327
    .line 328
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 329
    .line 330
    if-nez v1, :cond_4

    .line 331
    .line 332
    return-void

    .line 333
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$35;

    .line 334
    .line 335
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$35;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_5
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->F0:Z

    .line 343
    .line 344
    return-void
.end method
