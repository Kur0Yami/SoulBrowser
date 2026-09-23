.class Lcom/mycompany/app/dialog/DialogBackupLoad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBackupLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$2;->c:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$2;->c:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_web_txt_dark

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_web_txt_dark

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 51
    .line 52
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 58
    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 65
    .line 66
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 72
    .line 73
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 79
    .line 80
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_web_bg_dark

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_web_bg_dark

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->u0:Lcom/mycompany/app/view/MyRoundItem;

    .line 86
    .line 87
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 115
    .line 116
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 117
    .line 118
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 124
    .line 125
    const v2, -0xc0c0c1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 132
    .line 133
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 134
    .line 135
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 136
    .line 137
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 146
    .line 147
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 148
    .line 149
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 150
    .line 151
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 160
    .line 161
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 162
    .line 163
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 164
    .line 165
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 174
    .line 175
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 176
    .line 177
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 178
    .line 179
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 188
    .line 189
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 190
    .line 191
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 192
    .line 193
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_theme_6777

    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    :cond_web_theme_6777

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    const/high16 v2, -0x1000000

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_web_txt_light

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_web_txt_light

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 236
    .line 237
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 238
    .line 239
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 243
    .line 244
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 245
    .line 246
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 250
    .line 251
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 252
    .line 253
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 257
    .line 258
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 259
    .line 260
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 264
    .line 265
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_web_bg_light

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_web_bg_light

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->u0:Lcom/mycompany/app/view/MyRoundItem;

    .line 271
    .line 272
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 288
    .line 289
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 295
    .line 296
    const v2, -0xe19938

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 303
    .line 304
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 305
    .line 306
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 307
    .line 308
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 312
    .line 313
    const v2, -0x1f1f20

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 320
    .line 321
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 322
    .line 323
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 324
    .line 325
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 331
    .line 332
    .line 333
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 334
    .line 335
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 336
    .line 337
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 338
    .line 339
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 340
    .line 341
    .line 342
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 348
    .line 349
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 350
    .line 351
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 352
    .line 353
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 362
    .line 363
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 364
    .line 365
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 366
    .line 367
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 368
    .line 369
    .line 370
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 376
    .line 377
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 378
    .line 379
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 380
    .line 381
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_theme_light

    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    :cond_web_theme_light

    .line 387
    .line 388
    .line 389
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 390
    .line 391
    const/4 v2, 0x1

    .line 392
    const/4 v3, 0x0

    .line 393
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 397
    .line 398
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 399
    .line 400
    .line 401
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 402
    .line 403
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 407
    .line 408
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 409
    .line 410
    .line 411
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 412
    .line 413
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 417
    .line 418
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_q

    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    :cond_web_q
    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 422
    .line 423
    sget v2, Lnet/kaki87/soul2/testing/R$string;->backup_import:I

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 429
    .line 430
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$3;

    .line 431
    .line 432
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$3;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 439
    .line 440
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$4;

    .line 441
    .line 442
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$4;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 449
    .line 450
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$5;

    .line 451
    .line 452
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$5;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 459
    .line 460
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$6;

    .line 461
    .line 462
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$6;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    .line 467
    .line 468
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 469
    .line 470
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$7;

    .line 471
    .line 472
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$7;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    .line 477
    .line 478
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 479
    .line 480
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$8;

    .line 481
    .line 482
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$8;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    .line 487
    .line 488
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 489
    .line 490
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$9;

    .line 491
    .line 492
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$9;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    .line 497
    .line 498
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 499
    .line 500
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$10;

    .line 501
    .line 502
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$10;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 509
    .line 510
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$11;

    .line 511
    .line 512
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$11;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    .line 517
    .line 518
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 519
    .line 520
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$12;

    .line 521
    .line 522
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$12;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->u0:Lcom/mycompany/app/view/MyRoundItem;

    .line 529
    .line 530
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$13;

    .line 531
    .line 532
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$13;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    .line 537
    .line 538
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 539
    .line 540
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$14;

    .line 541
    .line 542
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$14;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_web_click

    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$WebClick;

    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$WebClick;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_web_click
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_click2

    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$WebClick;

    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$WebClick;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_web_click2
    .line 546
    .line 547
    .line 548
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 549
    .line 550
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$15;

    .line 551
    .line 552
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$15;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    .line 557
    .line 558
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 559
    .line 560
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupLoad$16;

    .line 561
    .line 562
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad$16;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 566
    .line 567
    .line 568
    :cond_2
    :goto_1
    return-void
.end method
