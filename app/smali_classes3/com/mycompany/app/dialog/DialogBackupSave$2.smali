.class Lcom/mycompany/app/dialog/DialogBackupSave$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBackupSave;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave$2;->c:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave$2;->c:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const v3, -0x9e9e9f

    .line 16
    .line 17
    .line 18
    const v4, -0x3e3e3f

    .line 19
    .line 20
    .line 21
    const v5, -0x50506

    .line 22
    .line 23
    .line 24
    const/high16 v6, -0x1000000

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->E0:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    const v2, -0xdededf

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_web_txt_dark

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_web_txt_dark

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 75
    .line 76
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 77
    .line 78
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 82
    .line 83
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 84
    .line 85
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->m0:Lcom/mycompany/app/view/MyLineFrame;

    .line 89
    .line 90
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 91
    .line 92
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 96
    .line 97
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 98
    .line 99
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->s0:Lcom/mycompany/app/view/MyLineFrame;

    .line 103
    .line 104
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 105
    .line 106
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_web_bg_dark

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_web_bg_dark

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 110
    .line 111
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 112
    .line 113
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->y0:Lcom/mycompany/app/view/MyRoundItem;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 127
    .line 128
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 142
    .line 143
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 149
    .line 150
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 154
    .line 155
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 156
    .line 157
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 158
    .line 159
    invoke-virtual {v1, v2, v7}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 163
    .line 164
    const v2, -0xc0c0c1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 171
    .line 172
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 173
    .line 174
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 175
    .line 176
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 185
    .line 186
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 187
    .line 188
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 189
    .line 190
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 199
    .line 200
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 201
    .line 202
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 203
    .line 204
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 213
    .line 214
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 215
    .line 216
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 217
    .line 218
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 227
    .line 228
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 229
    .line 230
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 231
    .line 232
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_theme_4786

    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    :cond_web_theme_4786

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_1
    const v2, -0x70708

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->E0:Landroid/widget/FrameLayout;

    .line 249
    .line 250
    const/4 v2, -0x1

    .line 251
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 265
    .line 266
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 275
    .line 276
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    .line 281
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 285
    .line 286
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_web_txt_light

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_web_txt_light

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 290
    .line 291
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 292
    .line 293
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 297
    .line 298
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 299
    .line 300
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->m0:Lcom/mycompany/app/view/MyLineFrame;

    .line 304
    .line 305
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 306
    .line 307
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 311
    .line 312
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 313
    .line 314
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->s0:Lcom/mycompany/app/view/MyLineFrame;

    .line 318
    .line 319
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 320
    .line 321
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_web_bg_light

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_web_bg_light

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 325
    .line 326
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 327
    .line 328
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->y0:Lcom/mycompany/app/view/MyRoundItem;

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    .line 335
    .line 336
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 342
    .line 343
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 347
    .line 348
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 352
    .line 353
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 357
    .line 358
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 364
    .line 365
    const v2, -0xe19938

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 372
    .line 373
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 374
    .line 375
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 376
    .line 377
    invoke-virtual {v1, v2, v7}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 378
    .line 379
    .line 380
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 381
    .line 382
    const v2, -0x1f1f20

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 389
    .line 390
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 391
    .line 392
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 393
    .line 394
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 395
    .line 396
    .line 397
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 400
    .line 401
    .line 402
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 403
    .line 404
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 405
    .line 406
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 407
    .line 408
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 409
    .line 410
    .line 411
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 412
    .line 413
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 417
    .line 418
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 419
    .line 420
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 421
    .line 422
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 426
    .line 427
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 431
    .line 432
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 433
    .line 434
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 435
    .line 436
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 437
    .line 438
    .line 439
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 440
    .line 441
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 445
    .line 446
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 447
    .line 448
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 449
    .line 450
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 451
    .line 452
    .line 453
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_theme_light

    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    :cond_web_theme_light
    .line 456
    .line 457
    .line 458
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 459
    .line 460
    const/4 v2, 0x0

    .line 461
    const/4 v7, 0x1

    .line 462
    invoke-virtual {v1, v2, v7}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->y0:Lcom/mycompany/app/view/MyRoundItem;

    .line 466
    .line 467
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 471
    .line 472
    sget v8, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 473
    .line 474
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 478
    .line 479
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 480
    .line 481
    .line 482
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 483
    .line 484
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$3;

    .line 485
    .line 486
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$3;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 490
    .line 491
    .line 492
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 493
    .line 494
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 495
    .line 496
    .line 497
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 498
    .line 499
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 500
    .line 501
    .line 502
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 503
    .line 504
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 505
    .line 506
    .line 507
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 508
    .line 509
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 510
    .line 511
    .line 512
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 513
    .line 514
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 515
    .line 516
    .line 517
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 518
    .line 519
    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_q

    invoke-virtual {v1, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    :cond_web_q
    .line 520
    .line 521
    .line 522
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 523
    .line 524
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$4;

    .line 525
    .line 526
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$4;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 533
    .line 534
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$5;

    .line 535
    .line 536
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$5;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 543
    .line 544
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$6;

    .line 545
    .line 546
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$6;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 553
    .line 554
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$7;

    .line 555
    .line 556
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$7;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .line 561
    .line 562
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->m0:Lcom/mycompany/app/view/MyLineFrame;

    .line 563
    .line 564
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$8;

    .line 565
    .line 566
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$8;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 573
    .line 574
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$9;

    .line 575
    .line 576
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$9;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    .line 581
    .line 582
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 583
    .line 584
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$10;

    .line 585
    .line 586
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$10;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    .line 591
    .line 592
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 593
    .line 594
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$11;

    .line 595
    .line 596
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$11;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    .line 601
    .line 602
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->s0:Lcom/mycompany/app/view/MyLineFrame;

    .line 603
    .line 604
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$12;

    .line 605
    .line 606
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$12;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    .line 611
    .line 612
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 613
    .line 614
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$13;

    .line 615
    .line 616
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$13;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    .line 621
    .line 622
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 623
    .line 624
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$14;

    .line 625
    .line 626
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$14;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    .line 631
    .line 632
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 633
    .line 634
    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$15;

    .line 635
    .line 636
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$15;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_web_click

    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$WebClick;

    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$WebClick;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_web_click
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_web_click2

    new-instance v8, Lcom/mycompany/app/dialog/DialogBackupSave$WebClick;

    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$WebClick;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_web_click2
    .line 640
    .line 641
    .line 642
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 643
    .line 644
    if-eqz v1, :cond_3

    .line 645
    .line 646
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 647
    .line 648
    if-eqz v8, :cond_2

    .line 649
    .line 650
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 651
    .line 652
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 653
    .line 654
    .line 655
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 656
    .line 657
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    .line 659
    .line 660
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 661
    .line 662
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    .line 664
    .line 665
    goto :goto_1

    .line 666
    :cond_2
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 667
    .line 668
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 669
    .line 670
    .line 671
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 672
    .line 673
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    .line 675
    .line 676
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 677
    .line 678
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    .line 680
    .line 681
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 682
    .line 683
    new-instance v3, Lcom/mycompany/app/dialog/DialogBackupSave$16;

    .line 684
    .line 685
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$16;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    .line 690
    .line 691
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 692
    .line 693
    if-nez v1, :cond_4

    .line 694
    .line 695
    goto :goto_4

    .line 696
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 697
    .line 698
    .line 699
    move-result-wide v3

    .line 700
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->m3(J)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-nez v3, :cond_5

    .line 709
    .line 710
    const-string v3, "."

    .line 711
    .line 712
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_5

    .line 717
    .line 718
    invoke-static {v7, v2, v1}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    if-eqz v2, :cond_6

    .line 727
    .line 728
    const-string v1, "Soul_backup"

    .line 729
    .line 730
    goto :goto_2

    .line 731
    :cond_6
    const-string v2, "Soul_backup_"

    .line 732
    .line 733
    invoke-static {v2, v1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 738
    .line 739
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    .line 741
    .line 742
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 743
    .line 744
    if-eqz v1, :cond_9

    .line 745
    .line 746
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-eqz v1, :cond_7

    .line 755
    .line 756
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 757
    .line 758
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 759
    .line 760
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 761
    .line 762
    .line 763
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 764
    .line 765
    const v2, -0xbbcca

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 769
    .line 770
    .line 771
    goto :goto_4

    .line 772
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 773
    .line 774
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->R0:Ljava/lang/String;

    .line 775
    .line 776
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .line 778
    .line 779
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 780
    .line 781
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 782
    .line 783
    if-eqz v2, :cond_8

    .line 784
    .line 785
    goto :goto_3

    .line 786
    :cond_8
    move v5, v6

    .line 787
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 788
    .line 789
    .line 790
    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 791
    .line 792
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupSave$17;

    .line 793
    .line 794
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$17;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    .line 799
    .line 800
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 801
    .line 802
    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupSave$18;

    .line 803
    .line 804
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$18;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 808
    .line 809
    .line 810
    :cond_a
    :goto_5
    return-void
.end method
