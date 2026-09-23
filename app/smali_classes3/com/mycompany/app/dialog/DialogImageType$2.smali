.class Lcom/mycompany/app/dialog/DialogImageType$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$2;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType$2;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/high16 v3, -0x1000000

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->j0:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const v2, -0xdededf

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const v2, -0x50506

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 74
    .line 75
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->n0:Lcom/mycompany/app/view/MyLineFrame;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 88
    .line 89
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->t0:Lcom/mycompany/app/view/MyLineFrame;

    .line 95
    .line 96
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->w0:Lcom/mycompany/app/view/MyLineFrame;

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->z0:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 116
    .line 117
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 123
    .line 124
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 125
    .line 126
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 127
    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 132
    .line 133
    const v2, -0xc0c0c1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 140
    .line 141
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 142
    .line 143
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 144
    .line 145
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 154
    .line 155
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 156
    .line 157
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 158
    .line 159
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 168
    .line 169
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 170
    .line 171
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 172
    .line 173
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 182
    .line 183
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 184
    .line 185
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 186
    .line 187
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 196
    .line 197
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 198
    .line 199
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 200
    .line 201
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 210
    .line 211
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 212
    .line 213
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 214
    .line 215
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_1
    const v2, -0x70708

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->j0:Landroid/widget/LinearLayout;

    .line 232
    .line 233
    const/4 v2, -0x1

    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 238
    .line 239
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 253
    .line 254
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 263
    .line 264
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 268
    .line 269
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 278
    .line 279
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->n0:Lcom/mycompany/app/view/MyLineFrame;

    .line 285
    .line 286
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    .line 290
    .line 291
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 292
    .line 293
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->t0:Lcom/mycompany/app/view/MyLineFrame;

    .line 299
    .line 300
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    .line 304
    .line 305
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->w0:Lcom/mycompany/app/view/MyLineFrame;

    .line 306
    .line 307
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->z0:Landroid/widget/FrameLayout;

    .line 313
    .line 314
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 320
    .line 321
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 327
    .line 328
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 329
    .line 330
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 331
    .line 332
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 336
    .line 337
    const v2, -0x1f1f20

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 344
    .line 345
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 346
    .line 347
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 348
    .line 349
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 358
    .line 359
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 360
    .line 361
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 362
    .line 363
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 372
    .line 373
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 374
    .line 375
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 376
    .line 377
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 378
    .line 379
    .line 380
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 381
    .line 382
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 386
    .line 387
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 388
    .line 389
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 390
    .line 391
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 395
    .line 396
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 397
    .line 398
    .line 399
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 400
    .line 401
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 402
    .line 403
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 404
    .line 405
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 411
    .line 412
    .line 413
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 414
    .line 415
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 416
    .line 417
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 418
    .line 419
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 425
    .line 426
    .line 427
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 428
    .line 429
    iput v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 430
    .line 431
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->c0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 432
    .line 433
    const/16 v2, 0x8

    .line 434
    .line 435
    const/4 v3, 0x0

    .line 436
    if-eqz v1, :cond_2

    .line 437
    .line 438
    iget v4, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 439
    .line 440
    iget v5, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->b:I

    .line 441
    .line 442
    add-int/2addr v4, v5

    .line 443
    iget v5, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->c:I

    .line 444
    .line 445
    add-int/2addr v4, v5

    .line 446
    iget v5, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 447
    .line 448
    add-int/2addr v4, v5

    .line 449
    iget v5, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->e:I

    .line 450
    .line 451
    add-int/2addr v4, v5

    .line 452
    iget v5, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->f:I

    .line 453
    .line 454
    add-int/2addr v4, v5

    .line 455
    iput v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->d0:I

    .line 456
    .line 457
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 458
    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v6, "JPG ("

    .line 462
    .line 463
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget v6, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 467
    .line 468
    const-string v7, ")"

    .line 469
    .line 470
    invoke-static {v5, v6, v7, v4}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 471
    .line 472
    .line 473
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 474
    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string v6, "PNG ("

    .line 478
    .line 479
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget v6, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->b:I

    .line 483
    .line 484
    invoke-static {v5, v6, v7, v4}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 485
    .line 486
    .line 487
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 488
    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v6, "GIF ("

    .line 492
    .line 493
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iget v6, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->c:I

    .line 497
    .line 498
    invoke-static {v5, v6, v7, v4}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 499
    .line 500
    .line 501
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 502
    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v6, "WEBP ("

    .line 506
    .line 507
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget v6, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 511
    .line 512
    invoke-static {v5, v6, v7, v4}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 513
    .line 514
    .line 515
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 516
    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 523
    .line 524
    sget v8, Lnet/kaki87/soul2/testing/R$string;->others:I

    .line 525
    .line 526
    const-string v9, " ("

    .line 527
    .line 528
    invoke-static {v6, v8, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    iget v6, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->e:I

    .line 532
    .line 533
    invoke-static {v5, v6, v7, v4}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 534
    .line 535
    .line 536
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 537
    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .line 542
    .line 543
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 544
    .line 545
    sget v8, Lnet/kaki87/soul2/testing/R$string;->no_ext:I

    .line 546
    .line 547
    invoke-static {v6, v8, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    iget v1, v1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->f:I

    .line 551
    .line 552
    invoke-static {v5, v1, v7, v4}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 553
    .line 554
    .line 555
    goto :goto_1

    .line 556
    :cond_2
    iput v3, v0, Lcom/mycompany/app/dialog/DialogImageType;->d0:I

    .line 557
    .line 558
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 559
    .line 560
    const-string v4, "JPG"

    .line 561
    .line 562
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 566
    .line 567
    const-string v4, "PNG"

    .line 568
    .line 569
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 573
    .line 574
    const-string v4, "GIF"

    .line 575
    .line 576
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 580
    .line 581
    const-string v4, "WEBP"

    .line 582
    .line 583
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    .line 585
    .line 586
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 587
    .line 588
    sget v4, Lnet/kaki87/soul2/testing/R$string;->others:I

    .line 589
    .line 590
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 591
    .line 592
    .line 593
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 594
    .line 595
    sget v4, Lnet/kaki87/soul2/testing/R$string;->no_ext:I

    .line 596
    .line 597
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 598
    .line 599
    .line 600
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 601
    .line 602
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 603
    .line 604
    .line 605
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 606
    .line 607
    iget v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 608
    .line 609
    const/16 v5, 0x7e

    .line 610
    .line 611
    const/4 v6, 0x1

    .line 612
    if-ne v4, v5, :cond_3

    .line 613
    .line 614
    move v4, v6

    .line 615
    goto :goto_2

    .line 616
    :cond_3
    move v4, v3

    .line 617
    :goto_2
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 618
    .line 619
    .line 620
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 621
    .line 622
    iget v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 623
    .line 624
    const/4 v5, 0x2

    .line 625
    and-int/2addr v4, v5

    .line 626
    if-ne v4, v5, :cond_4

    .line 627
    .line 628
    move v4, v6

    .line 629
    goto :goto_3

    .line 630
    :cond_4
    move v4, v3

    .line 631
    :goto_3
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 632
    .line 633
    .line 634
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 635
    .line 636
    iget v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 637
    .line 638
    const/4 v5, 0x4

    .line 639
    and-int/2addr v4, v5

    .line 640
    if-ne v4, v5, :cond_5

    .line 641
    .line 642
    move v4, v6

    .line 643
    goto :goto_4

    .line 644
    :cond_5
    move v4, v3

    .line 645
    :goto_4
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 646
    .line 647
    .line 648
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 649
    .line 650
    iget v4, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 651
    .line 652
    and-int/2addr v4, v2

    .line 653
    if-ne v4, v2, :cond_6

    .line 654
    .line 655
    move v2, v6

    .line 656
    goto :goto_5

    .line 657
    :cond_6
    move v2, v3

    .line 658
    :goto_5
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 659
    .line 660
    .line 661
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 662
    .line 663
    iget v2, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 664
    .line 665
    const/16 v4, 0x10

    .line 666
    .line 667
    and-int/2addr v2, v4

    .line 668
    if-ne v2, v4, :cond_7

    .line 669
    .line 670
    move v2, v6

    .line 671
    goto :goto_6

    .line 672
    :cond_7
    move v2, v3

    .line 673
    :goto_6
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 674
    .line 675
    .line 676
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 677
    .line 678
    iget v2, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 679
    .line 680
    const/16 v4, 0x20

    .line 681
    .line 682
    and-int/2addr v2, v4

    .line 683
    if-ne v2, v4, :cond_8

    .line 684
    .line 685
    move v2, v6

    .line 686
    goto :goto_7

    .line 687
    :cond_8
    move v2, v3

    .line 688
    :goto_7
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 689
    .line 690
    .line 691
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 692
    .line 693
    iget v2, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 694
    .line 695
    const/16 v4, 0x40

    .line 696
    .line 697
    and-int/2addr v2, v4

    .line 698
    if-ne v2, v4, :cond_9

    .line 699
    .line 700
    goto :goto_8

    .line 701
    :cond_9
    move v6, v3

    .line 702
    :goto_8
    invoke-virtual {v1, v6, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogImageType;->B()V

    .line 706
    .line 707
    .line 708
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 709
    .line 710
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$3;

    .line 711
    .line 712
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$3;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    .line 717
    .line 718
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 719
    .line 720
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$4;

    .line 721
    .line 722
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$4;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    .line 727
    .line 728
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 729
    .line 730
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$5;

    .line 731
    .line 732
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$5;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    .line 737
    .line 738
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->n0:Lcom/mycompany/app/view/MyLineFrame;

    .line 739
    .line 740
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$6;

    .line 741
    .line 742
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$6;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    .line 747
    .line 748
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 749
    .line 750
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$7;

    .line 751
    .line 752
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$7;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    .line 757
    .line 758
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 759
    .line 760
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$8;

    .line 761
    .line 762
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$8;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    .line 767
    .line 768
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 769
    .line 770
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$9;

    .line 771
    .line 772
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$9;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    .line 777
    .line 778
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->t0:Lcom/mycompany/app/view/MyLineFrame;

    .line 779
    .line 780
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$10;

    .line 781
    .line 782
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$10;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    .line 787
    .line 788
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 789
    .line 790
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$11;

    .line 791
    .line 792
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$11;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    .line 797
    .line 798
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->w0:Lcom/mycompany/app/view/MyLineFrame;

    .line 799
    .line 800
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$12;

    .line 801
    .line 802
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$12;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    .line 807
    .line 808
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 809
    .line 810
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$13;

    .line 811
    .line 812
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$13;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    .line 817
    .line 818
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->z0:Landroid/widget/FrameLayout;

    .line 819
    .line 820
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$14;

    .line 821
    .line 822
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$14;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    .line 827
    .line 828
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 829
    .line 830
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$15;

    .line 831
    .line 832
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$15;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    .line 837
    .line 838
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 839
    .line 840
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$16;

    .line 841
    .line 842
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$16;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    .line 847
    .line 848
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 849
    .line 850
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$17;

    .line 851
    .line 852
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageType$17;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 856
    .line 857
    .line 858
    :cond_a
    :goto_9
    return-void
.end method
