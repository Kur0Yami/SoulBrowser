.class Lcom/mycompany/app/dialog/DialogCreateAlbum$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$2;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$2;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->create_album:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$string;->create_album:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .line 40
    .line 41
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    const v2, -0xe19938

    .line 44
    .line 45
    .line 46
    const v3, -0x50506

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h0:Lcom/mycompany/app/view/MyLineView;

    .line 52
    .line 53
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    const v4, -0x252526

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    const v5, -0xc0c0c1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    const v6, -0x3e3e3f

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->q0:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 105
    .line 106
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 240
    .line 241
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h0:Lcom/mycompany/app/view/MyLineView;

    .line 261
    .line 262
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 263
    .line 264
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 268
    .line 269
    const/high16 v4, -0x1000000

    .line 270
    .line 271
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 275
    .line 276
    const v5, -0xbbbbbc

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    const v6, -0x70708

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 296
    .line 297
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    const v7, -0x9e9e9f

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 309
    .line 310
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->q0:Landroid/widget/FrameLayout;

    .line 314
    .line 315
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 316
    .line 317
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 321
    .line 322
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 326
    .line 327
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 336
    .line 337
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 341
    .line 342
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 346
    .line 347
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 351
    .line 352
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 356
    .line 357
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 361
    .line 362
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    .line 364
    .line 365
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 366
    .line 367
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    .line 369
    .line 370
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 371
    .line 372
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 376
    .line 377
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    .line 379
    .line 380
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 381
    .line 382
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 386
    .line 387
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    .line 389
    .line 390
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 391
    .line 392
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 396
    .line 397
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 401
    .line 402
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 406
    .line 407
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 411
    .line 412
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    .line 414
    .line 415
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 416
    .line 417
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    .line 419
    .line 420
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 421
    .line 422
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 426
    .line 427
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 431
    .line 432
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 436
    .line 437
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 441
    .line 442
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 446
    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 451
    .line 452
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 453
    .line 454
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 455
    .line 456
    .line 457
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 458
    .line 459
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 463
    .line 464
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 465
    .line 466
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 467
    .line 468
    .line 469
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 470
    .line 471
    const/4 v4, 0x0

    .line 472
    if-eqz v1, :cond_2

    .line 473
    .line 474
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    goto :goto_1

    .line 479
    :cond_2
    move v1, v4

    .line 480
    :goto_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 481
    .line 482
    new-instance v6, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v7, ""

    .line 485
    .line 486
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 500
    .line 501
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->Z0:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a1:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->J(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 512
    .line 513
    if-eqz v1, :cond_3

    .line 514
    .line 515
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h0:Lcom/mycompany/app/view/MyLineView;

    .line 516
    .line 517
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 518
    .line 519
    int-to-float v2, v2

    .line 520
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 521
    .line 522
    .line 523
    goto :goto_2

    .line 524
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h0:Lcom/mycompany/app/view/MyLineView;

    .line 525
    .line 526
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 527
    .line 528
    .line 529
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h0:Lcom/mycompany/app/view/MyLineView;

    .line 530
    .line 531
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h0:Lcom/mycompany/app/view/MyLineView;

    .line 535
    .line 536
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$3;

    .line 537
    .line 538
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$3;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    .line 543
    .line 544
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 545
    .line 546
    const/4 v2, 0x1

    .line 547
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 548
    .line 549
    .line 550
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 551
    .line 552
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$4;

    .line 553
    .line 554
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$4;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 561
    .line 562
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$5;

    .line 563
    .line 564
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$5;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 568
    .line 569
    .line 570
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->q0:Landroid/widget/FrameLayout;

    .line 571
    .line 572
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$6;

    .line 573
    .line 574
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$6;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    .line 579
    .line 580
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 581
    .line 582
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$7;

    .line 583
    .line 584
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$7;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    .line 589
    .line 590
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 591
    .line 592
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$8;

    .line 593
    .line 594
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$8;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    .line 599
    .line 600
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 601
    .line 602
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$9;

    .line 603
    .line 604
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$9;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 608
    .line 609
    .line 610
    :cond_4
    :goto_3
    return-void
.end method
