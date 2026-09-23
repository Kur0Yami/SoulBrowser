.class Lcom/mycompany/app/dialog/DialogSetTts$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$2;->c:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts$2;->c:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->e0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 23
    .line 24
    sget v2, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 25
    .line 26
    const v3, -0xdededf

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyRoundFrame;->c(II)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    const v2, -0x50506

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const v2, -0x70708

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->e0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 77
    .line 78
    sget v2, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 79
    .line 80
    const/4 v4, -0x1

    .line 81
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/view/MyRoundFrame;->c(II)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 90
    .line 91
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    const v2, -0xe19938

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 122
    .line 123
    sget v2, Lnet/kaki87/soul2/testing/R$string;->tts_info_2:I

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->g0:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->g0:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->g0:Ljava/lang/String;

    .line 145
    .line 146
    const/16 v2, 0xa

    .line 147
    .line 148
    const/16 v3, 0x20

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->g0:Ljava/lang/String;

    .line 155
    .line 156
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O3(Ljava/lang/String;)Ljava/util/Locale;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 163
    .line 164
    if-eqz v1, :cond_3

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const/4 v2, 0x0

    .line 171
    :goto_1
    move-object v6, v1

    .line 172
    move v7, v2

    .line 173
    goto :goto_2

    .line 174
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 175
    .line 176
    sget v2, Lnet/kaki87/soul2/testing/R$string;->auto_detect:I

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 191
    .line 192
    sget v5, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    const/4 v4, 0x0

    .line 196
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 203
    .line 204
    sget v6, Lnet/kaki87/soul2/testing/R$string;->voice_speed:I

    .line 205
    .line 206
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 207
    .line 208
    const/16 v3, 0x19

    .line 209
    .line 210
    invoke-static {v2, v3}, Lcom/mycompany/app/dialog/DialogSetTts;->C(FI)I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    const/4 v9, 0x0

    .line 215
    const/4 v5, 0x1

    .line 216
    const/16 v7, 0x19

    .line 217
    .line 218
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 225
    .line 226
    sget v7, Lnet/kaki87/soul2/testing/R$string;->voice_tone:I

    .line 227
    .line 228
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 229
    .line 230
    const/16 v3, 0xf

    .line 231
    .line 232
    invoke-static {v2, v3}, Lcom/mycompany/app/dialog/DialogSetTts;->C(FI)I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    const/4 v10, 0x0

    .line 237
    const/4 v6, 0x2

    .line 238
    const/16 v8, 0xf

    .line 239
    .line 240
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    const/4 v2, 0x1

    .line 244
    invoke-static {v1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 249
    .line 250
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetTts$3;

    .line 251
    .line 252
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetTts$3;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 253
    .line 254
    .line 255
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 256
    .line 257
    .line 258
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 266
    .line 267
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 273
    .line 274
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTts$4;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTts$4;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTts$5;

    .line 285
    .line 286
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTts$5;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 293
    .line 294
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTts$6;

    .line 295
    .line 296
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTts$6;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 303
    .line 304
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTts$7;

    .line 305
    .line 306
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTts$7;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetTts;->E(Z)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 320
    .line 321
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTts$8;

    .line 322
    .line 323
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTts$8;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 327
    .line 328
    .line 329
    :cond_4
    :goto_3
    return-void
.end method
