.class Lcom/mycompany/app/dialog/DialogTabMini$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$2;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$2;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

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
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyDialogMenu;->setBackColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const v2, -0x50506

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 40
    .line 41
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->q0:Landroid/widget/ImageView;

    .line 47
    .line 48
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_dark_20:I

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->s0:Landroid/widget/ImageView;

    .line 54
    .line 55
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_dark_20:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->t0:Lcom/google/android/material/tabs/TabLayout;

    .line 61
    .line 62
    const v2, -0x4f4f50

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->p0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 69
    .line 70
    const v2, -0xc0c0c1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->r0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const v2, -0x70708

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogMenu;->setBackColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 111
    .line 112
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 113
    .line 114
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 115
    .line 116
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->q0:Landroid/widget/ImageView;

    .line 120
    .line 121
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_black_20:I

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->s0:Landroid/widget/ImageView;

    .line 127
    .line 128
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_black_20:I

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->t0:Lcom/google/android/material/tabs/TabLayout;

    .line 134
    .line 135
    const v2, -0x595616

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->p0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 142
    .line 143
    const/high16 v2, 0x21000000

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->r0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 161
    .line 162
    .line 163
    :goto_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 164
    .line 165
    const/high16 v2, 0x3f800000    # 1.0f

    .line 166
    .line 167
    const v3, 0x3ecccccd    # 0.4f

    .line 168
    .line 169
    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->q0:Landroid/widget/ImageView;

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->s0:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->q0:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->s0:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 191
    .line 192
    .line 193
    :goto_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 194
    .line 195
    if-eqz v1, :cond_3

    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 198
    .line 199
    const/4 v2, 0x1

    .line 200
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 201
    .line 202
    .line 203
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$3;

    .line 206
    .line 207
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$3;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 214
    .line 215
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$4;

    .line 216
    .line 217
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$4;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->y0:Lcom/mycompany/app/view/MyScrollBar;

    .line 224
    .line 225
    if-eqz v1, :cond_4

    .line 226
    .line 227
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$5;

    .line 228
    .line 229
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$5;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 233
    .line 234
    .line 235
    :cond_4
    new-instance v1, Landroid/view/GestureDetector;

    .line 236
    .line 237
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 238
    .line 239
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMini$6;

    .line 240
    .line 241
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMini$6;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 245
    .line 246
    .line 247
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->Y0:Landroid/view/GestureDetector;

    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->p0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 250
    .line 251
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$7;

    .line 252
    .line 253
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$7;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->r0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 260
    .line 261
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$8;

    .line 262
    .line 263
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$8;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 270
    .line 271
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$9;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$9;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 277
    .line 278
    .line 279
    :cond_5
    :goto_2
    return-void
.end method
