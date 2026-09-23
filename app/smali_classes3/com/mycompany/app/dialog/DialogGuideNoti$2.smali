.class Lcom/mycompany/app/dialog/DialogGuideNoti$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGuideNoti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGuideNoti;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti$2;->c:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideNoti$2;->c:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 19
    .line 20
    sget v3, Lnet/kaki87/soul2/testing/R$string;->noti_pms_guide_1:I

    .line 21
    .line 22
    const-string v4, "\n"

    .line 23
    .line 24
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 28
    .line 29
    sget v3, Lnet/kaki87/soul2/testing/R$string;->change_in_setting:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    sget v3, Lnet/kaki87/soul2/testing/R$string;->noti_pms:I

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    sget v2, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ads_block:I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->secret_mode:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    sget v2, Lnet/kaki87/soul2/testing/R$string;->back_play:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    sget v2, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->f0:Landroid/view/View;

    .line 90
    .line 91
    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->h0:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->j0:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->l0:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->n0:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 114
    .line 115
    .line 116
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 117
    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->c0:Landroid/view/View;

    .line 121
    .line 122
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_notifications_active_dark_24:I

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->f0:Landroid/view/View;

    .line 128
    .line 129
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_24:I

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->h0:Landroid/view/View;

    .line 135
    .line 136
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_24:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->j0:Landroid/view/View;

    .line 142
    .line 143
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_dark_24:I

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->l0:Landroid/view/View;

    .line 149
    .line 150
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->n0:Landroid/view/View;

    .line 156
    .line 157
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_dark_24:I

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    const v2, -0x50506

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 206
    .line 207
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->c0:Landroid/view/View;

    .line 214
    .line 215
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_notifications_active_black_24:I

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->f0:Landroid/view/View;

    .line 221
    .line 222
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_24:I

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->h0:Landroid/view/View;

    .line 228
    .line 229
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->j0:Landroid/view/View;

    .line 235
    .line 236
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_black_24:I

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->l0:Landroid/view/View;

    .line 242
    .line 243
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->n0:Landroid/view/View;

    .line 249
    .line 250
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_black_24:I

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 256
    .line 257
    const/high16 v2, -0x1000000

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 293
    .line 294
    const v2, -0xe19938

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 301
    .line 302
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 303
    .line 304
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 305
    .line 306
    .line 307
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 308
    .line 309
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideNoti$3;

    .line 310
    .line 311
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideNoti$3;-><init>(Lcom/mycompany/app/dialog/DialogGuideNoti;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 318
    .line 319
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideNoti$4;

    .line 320
    .line 321
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideNoti$4;-><init>(Lcom/mycompany/app/dialog/DialogGuideNoti;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 325
    .line 326
    .line 327
    :cond_2
    :goto_1
    return-void
.end method
