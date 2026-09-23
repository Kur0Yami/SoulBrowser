.class Lcom/mycompany/app/setting/SettingSense$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSense;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSense;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSense$1;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense$1;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 14
    .line 15
    .line 16
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    const/high16 v2, -0x1000000

    .line 19
    .line 20
    const v3, -0x50506

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 52
    .line 53
    const v4, -0xdededf

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    const v4, -0xc0c0c1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 100
    .line 101
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 105
    .line 106
    const/4 v4, -0x1

    .line 107
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    const/high16 v4, 0x21000000

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    new-instance v4, Lcom/mycompany/app/setting/SettingSense$2;

    .line 130
    .line 131
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingSense$2;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 138
    .line 139
    new-instance v4, Lcom/mycompany/app/setting/SettingSense$3;

    .line 140
    .line 141
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingSense$3;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    new-instance v4, Lcom/mycompany/app/setting/SettingSense$4;

    .line 150
    .line 151
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingSense$4;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    move v4, v1

    .line 159
    :goto_1
    const/4 v5, 0x5

    .line 160
    const/4 v6, 0x1

    .line 161
    if-ge v4, v5, :cond_9

    .line 162
    .line 163
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 164
    .line 165
    if-eqz v5, :cond_2

    .line 166
    .line 167
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 168
    .line 169
    aget-object v5, v5, v4

    .line 170
    .line 171
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 175
    .line 176
    aget-object v5, v5, v4

    .line 177
    .line 178
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 179
    .line 180
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 184
    .line 185
    aget-object v5, v5, v4

    .line 186
    .line 187
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_2
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 192
    .line 193
    aget-object v5, v5, v4

    .line 194
    .line 195
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 199
    .line 200
    aget-object v5, v5, v4

    .line 201
    .line 202
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    .line 206
    .line 207
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 208
    .line 209
    aget-object v5, v5, v4

    .line 210
    .line 211
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    :goto_2
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 215
    .line 216
    aget-object v5, v5, v4

    .line 217
    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 226
    .line 227
    aget-object v5, v5, v4

    .line 228
    .line 229
    new-instance v7, Lcom/mycompany/app/setting/SettingSense$5;

    .line 230
    .line 231
    invoke-direct {v7, v0}, Lcom/mycompany/app/setting/SettingSense$5;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 238
    .line 239
    aget-object v5, v5, v4

    .line 240
    .line 241
    const/high16 v7, 0x41800000    # 16.0f

    .line 242
    .line 243
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 244
    .line 245
    .line 246
    const/4 v5, 0x4

    .line 247
    if-ge v4, v5, :cond_8

    .line 248
    .line 249
    if-ltz v4, :cond_8

    .line 250
    .line 251
    if-lt v4, v5, :cond_3

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_3
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 255
    .line 256
    if-nez v5, :cond_4

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_4
    aget-object v5, v5, v4

    .line 260
    .line 261
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    if-nez v5, :cond_5

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_5
    if-eqz v4, :cond_7

    .line 269
    .line 270
    if-ne v4, v6, :cond_6

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_6
    sget v6, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 274
    .line 275
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    :goto_3
    sget v6, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 279
    .line 280
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    .line 282
    :cond_8
    :goto_4
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 283
    .line 284
    aget v5, v5, v4

    .line 285
    .line 286
    invoke-virtual {v0, v4, v5}, Lcom/mycompany/app/setting/SettingSense;->H0(II)V

    .line 287
    .line 288
    .line 289
    add-int/lit8 v4, v4, 0x1

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_9
    sget-boolean v2, Lcom/mycompany/app/pref/PrefRead;->z:Z

    .line 294
    .line 295
    if-eqz v2, :cond_a

    .line 296
    .line 297
    :goto_5
    if-ge v1, v5, :cond_a

    .line 298
    .line 299
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 300
    .line 301
    aget-object v2, v2, v1

    .line 302
    .line 303
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v1, v1, 0x1

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_a
    :goto_6
    return-void
.end method
