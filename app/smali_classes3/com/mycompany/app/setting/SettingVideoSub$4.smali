.class Lcom/mycompany/app/setting/SettingVideoSub$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$4;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$4;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    const/high16 v2, -0x1000000

    .line 12
    .line 13
    const v3, -0xc0c0c1

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v4, -0x50506

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->O1:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    const v2, -0xdededf

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->U1:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->i2:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->j2:Lcom/mycompany/app/view/MyLineFrame;

    .line 71
    .line 72
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->V1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->W1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->a2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->b2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->k2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->m2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->n2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 172
    .line 173
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 179
    .line 180
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 181
    .line 182
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 183
    .line 184
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 192
    .line 193
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 194
    .line 195
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 196
    .line 197
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 205
    .line 206
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 207
    .line 208
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 209
    .line 210
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 218
    .line 219
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 220
    .line 221
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 222
    .line 223
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 231
    .line 232
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 233
    .line 234
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 235
    .line 236
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 244
    .line 245
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 246
    .line 247
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 248
    .line 249
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 257
    .line 258
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 259
    .line 260
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 261
    .line 262
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 270
    .line 271
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 272
    .line 273
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 274
    .line 275
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 283
    .line 284
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 288
    .line 289
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 293
    .line 294
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 298
    .line 299
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 303
    .line 304
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 305
    .line 306
    .line 307
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 308
    .line 309
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 313
    .line 314
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 318
    .line 319
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 320
    .line 321
    .line 322
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 323
    .line 324
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 328
    .line 329
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 333
    .line 334
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 340
    .line 341
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 342
    .line 343
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 352
    .line 353
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 354
    .line 355
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 359
    .line 360
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 361
    .line 362
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 363
    .line 364
    .line 365
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 366
    .line 367
    const v4, -0x70708

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->O1:Landroid/widget/LinearLayout;

    .line 374
    .line 375
    const/4 v4, -0x1

    .line 376
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->U1:Landroid/widget/LinearLayout;

    .line 380
    .line 381
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->i2:Landroid/widget/LinearLayout;

    .line 385
    .line 386
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->j2:Lcom/mycompany/app/view/MyLineFrame;

    .line 390
    .line 391
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 392
    .line 393
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    .line 400
    .line 401
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 402
    .line 403
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->V1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 407
    .line 408
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    .line 410
    .line 411
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->W1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 412
    .line 413
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->a2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->b2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 422
    .line 423
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->k2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->m2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 432
    .line 433
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    .line 435
    .line 436
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->n2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 442
    .line 443
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 449
    .line 450
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 456
    .line 457
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 458
    .line 459
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 463
    .line 464
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 467
    .line 468
    .line 469
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 470
    .line 471
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 472
    .line 473
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 474
    .line 475
    .line 476
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 477
    .line 478
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 481
    .line 482
    .line 483
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 484
    .line 485
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 488
    .line 489
    .line 490
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 491
    .line 492
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 493
    .line 494
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 495
    .line 496
    .line 497
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 498
    .line 499
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 500
    .line 501
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 502
    .line 503
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 511
    .line 512
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 513
    .line 514
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 515
    .line 516
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 524
    .line 525
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 526
    .line 527
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 528
    .line 529
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 537
    .line 538
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 539
    .line 540
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 541
    .line 542
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 547
    .line 548
    .line 549
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 550
    .line 551
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 552
    .line 553
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 554
    .line 555
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    .line 561
    .line 562
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 563
    .line 564
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 565
    .line 566
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 567
    .line 568
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 573
    .line 574
    .line 575
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 576
    .line 577
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 578
    .line 579
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 580
    .line 581
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    .line 587
    .line 588
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 589
    .line 590
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 591
    .line 592
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 593
    .line 594
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 599
    .line 600
    .line 601
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 602
    .line 603
    const/high16 v2, 0x21000000

    .line 604
    .line 605
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 606
    .line 607
    .line 608
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 609
    .line 610
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 611
    .line 612
    .line 613
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 614
    .line 615
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 616
    .line 617
    .line 618
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 619
    .line 620
    const v2, -0x1f1f20

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 624
    .line 625
    .line 626
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 627
    .line 628
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 629
    .line 630
    .line 631
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 632
    .line 633
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 634
    .line 635
    .line 636
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 637
    .line 638
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 639
    .line 640
    .line 641
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 642
    .line 643
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 644
    .line 645
    .line 646
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 647
    .line 648
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 649
    .line 650
    .line 651
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 652
    .line 653
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 654
    .line 655
    .line 656
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 657
    .line 658
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 659
    .line 660
    .line 661
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->O1:Landroid/widget/LinearLayout;

    .line 662
    .line 663
    const/4 v2, 0x1

    .line 664
    if-nez v1, :cond_2

    .line 665
    .line 666
    goto :goto_1

    .line 667
    :cond_2
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$26;

    .line 668
    .line 669
    invoke-direct {v4}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 676
    .line 677
    .line 678
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->U1:Landroid/widget/LinearLayout;

    .line 679
    .line 680
    if-nez v1, :cond_3

    .line 681
    .line 682
    goto :goto_2

    .line 683
    :cond_3
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$26;

    .line 684
    .line 685
    invoke-direct {v4}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 692
    .line 693
    .line 694
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->i2:Landroid/widget/LinearLayout;

    .line 695
    .line 696
    if-nez v1, :cond_4

    .line 697
    .line 698
    goto :goto_3

    .line 699
    :cond_4
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$26;

    .line 700
    .line 701
    invoke-direct {v4}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 708
    .line 709
    .line 710
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 711
    .line 712
    if-nez v1, :cond_5

    .line 713
    .line 714
    goto :goto_4

    .line 715
    :cond_5
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$29;

    .line 716
    .line 717
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$29;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 721
    .line 722
    .line 723
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoSub$30;

    .line 724
    .line 725
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingVideoSub$30;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 729
    .line 730
    .line 731
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 732
    .line 733
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$5;

    .line 734
    .line 735
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$5;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    .line 740
    .line 741
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 742
    .line 743
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$6;

    .line 744
    .line 745
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$6;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    .line 750
    .line 751
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 752
    .line 753
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$7;

    .line 754
    .line 755
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$7;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    .line 760
    .line 761
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->L1:Landroid/widget/ScrollView;

    .line 762
    .line 763
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$8;

    .line 768
    .line 769
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$8;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 776
    .line 777
    const/4 v4, 0x0

    .line 778
    invoke-virtual {v1, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 779
    .line 780
    .line 781
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 782
    .line 783
    const/16 v5, 0x28

    .line 784
    .line 785
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 786
    .line 787
    .line 788
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->R1:Landroid/widget/SeekBar;

    .line 789
    .line 790
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoSub$9;

    .line 791
    .line 792
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingVideoSub$9;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 796
    .line 797
    .line 798
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 799
    .line 800
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoSub$10;

    .line 801
    .line 802
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingVideoSub$10;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    .line 807
    .line 808
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 809
    .line 810
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoSub$11;

    .line 811
    .line 812
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingVideoSub$11;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    .line 817
    .line 818
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 819
    .line 820
    invoke-virtual {v1, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 821
    .line 822
    .line 823
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 824
    .line 825
    const/16 v5, 0x14

    .line 826
    .line 827
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 828
    .line 829
    .line 830
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 831
    .line 832
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoSub$12;

    .line 833
    .line 834
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingVideoSub$12;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 838
    .line 839
    .line 840
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 841
    .line 842
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoSub$13;

    .line 843
    .line 844
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingVideoSub$13;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    .line 849
    .line 850
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 851
    .line 852
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoSub$14;

    .line 853
    .line 854
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingVideoSub$14;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    .line 859
    .line 860
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 861
    .line 862
    invoke-virtual {v1, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 863
    .line 864
    .line 865
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 866
    .line 867
    const/16 v5, 0x5a

    .line 868
    .line 869
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 870
    .line 871
    .line 872
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 873
    .line 874
    new-instance v6, Lcom/mycompany/app/setting/SettingVideoSub$15;

    .line 875
    .line 876
    invoke-direct {v6, v0}, Lcom/mycompany/app/setting/SettingVideoSub$15;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 880
    .line 881
    .line 882
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 883
    .line 884
    new-instance v6, Lcom/mycompany/app/setting/SettingVideoSub$16;

    .line 885
    .line 886
    invoke-direct {v6, v0}, Lcom/mycompany/app/setting/SettingVideoSub$16;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    .line 891
    .line 892
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 893
    .line 894
    new-instance v6, Lcom/mycompany/app/setting/SettingVideoSub$17;

    .line 895
    .line 896
    invoke-direct {v6, v0}, Lcom/mycompany/app/setting/SettingVideoSub$17;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    .line 901
    .line 902
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 903
    .line 904
    invoke-virtual {v1, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 905
    .line 906
    .line 907
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 908
    .line 909
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 910
    .line 911
    .line 912
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 913
    .line 914
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$18;

    .line 915
    .line 916
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$18;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 920
    .line 921
    .line 922
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 923
    .line 924
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$19;

    .line 925
    .line 926
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$19;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    .line 931
    .line 932
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 933
    .line 934
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$20;

    .line 935
    .line 936
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$20;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    .line 941
    .line 942
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->j2:Lcom/mycompany/app/view/MyLineFrame;

    .line 943
    .line 944
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$21;

    .line 945
    .line 946
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$21;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    .line 951
    .line 952
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->l2:Lcom/mycompany/app/view/MySwitchView;

    .line 953
    .line 954
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$22;

    .line 955
    .line 956
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$22;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    .line 961
    .line 962
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->h2:Lcom/mycompany/app/view/MyPaletteView;

    .line 963
    .line 964
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setType(I)V

    .line 965
    .line 966
    .line 967
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->h2:Lcom/mycompany/app/view/MyPaletteView;

    .line 968
    .line 969
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyPaletteView;->setBorder(I)V

    .line 970
    .line 971
    .line 972
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->h2:Lcom/mycompany/app/view/MyPaletteView;

    .line 973
    .line 974
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoSub$23;

    .line 975
    .line 976
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoSub$23;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyPaletteView;->setListener(Lcom/mycompany/app/view/MyPaletteView$PaletteListener;)V

    .line 980
    .line 981
    .line 982
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->t2:Lcom/mycompany/app/view/MyPaletteView;

    .line 983
    .line 984
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setType(I)V

    .line 985
    .line 986
    .line 987
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->t2:Lcom/mycompany/app/view/MyPaletteView;

    .line 988
    .line 989
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyPaletteView;->setBorder(I)V

    .line 990
    .line 991
    .line 992
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->t2:Lcom/mycompany/app/view/MyPaletteView;

    .line 993
    .line 994
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoSub$24;

    .line 995
    .line 996
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoSub$24;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setListener(Lcom/mycompany/app/view/MyPaletteView$PaletteListener;)V

    .line 1000
    .line 1001
    .line 1002
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 1003
    .line 1004
    if-nez v1, :cond_6

    .line 1005
    .line 1006
    :goto_5
    return-void

    .line 1007
    :cond_6
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoSub$25;

    .line 1008
    .line 1009
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoSub$25;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1013
    .line 1014
    .line 1015
    return-void
.end method
