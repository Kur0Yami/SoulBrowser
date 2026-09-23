.class Lcom/mycompany/app/dialog/DialogSetAdblock$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetAdblock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAdblock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAdblock$2;->c:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAdblock$2;->c:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    const/high16 v2, -0x1000000

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    const v2, -0xc0c0c1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    const v2, -0x50506

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 56
    .line 57
    const v2, -0x70708

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    const/high16 v2, 0x21000000

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    const v2, -0xe19938

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 93
    .line 94
    sget v2, Lnet/kaki87/soul2/testing/R$string;->refresh:I

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    .line 99
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 100
    .line 101
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->m0:Z

    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->b0:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->e0:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    :try_start_0
    iget-object v4, v1, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 116
    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_3

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_2

    .line 140
    :catch_0
    :cond_4
    :goto_1
    move v1, v3

    .line 141
    :goto_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->n0:Z

    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->b0:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->d0:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookAds;->m(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->o0:Z

    .line 156
    .line 157
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 158
    .line 159
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->p0:Z

    .line 160
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 167
    .line 168
    sget v6, Lnet/kaki87/soul2/testing/R$string;->ads_block:I

    .line 169
    .line 170
    sget v7, Lnet/kaki87/soul2/testing/R$string;->ads_block_info:I

    .line 171
    .line 172
    iget-boolean v9, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->m0:Z

    .line 173
    .line 174
    const/4 v10, 0x1

    .line 175
    const/4 v8, 0x2

    .line 176
    const/4 v5, 0x0

    .line 177
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 184
    .line 185
    const/4 v4, 0x1

    .line 186
    invoke-direct {v2, v4, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 193
    .line 194
    sget v7, Lnet/kaki87/soul2/testing/R$string;->ads_allow_site:I

    .line 195
    .line 196
    iget-boolean v10, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->n0:Z

    .line 197
    .line 198
    const/4 v11, 0x1

    .line 199
    const/4 v9, 0x1

    .line 200
    const/4 v6, 0x2

    .line 201
    const/4 v8, 0x0

    .line 202
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 209
    .line 210
    sget v8, Lnet/kaki87/soul2/testing/R$string;->ads_allow_page:I

    .line 211
    .line 212
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->o0:Z

    .line 213
    .line 214
    const/4 v12, 0x1

    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v7, 0x3

    .line 217
    const/4 v9, 0x0

    .line 218
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 225
    .line 226
    sget v9, Lnet/kaki87/soul2/testing/R$string;->ads_white:I

    .line 227
    .line 228
    const/4 v11, 0x0

    .line 229
    const/4 v12, 0x0

    .line 230
    const/4 v8, 0x4

    .line 231
    invoke-direct/range {v7 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 239
    .line 240
    new-instance v6, Lcom/mycompany/app/dialog/DialogSetAdblock$3;

    .line 241
    .line 242
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogSetAdblock$3;-><init>(Lcom/mycompany/app/dialog/DialogSetAdblock;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v5, v1, v4, v2, v6}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 246
    .line 247
    .line 248
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 251
    .line 252
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 261
    .line 262
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 268
    .line 269
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAdblock$4;

    .line 270
    .line 271
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAdblock$4;-><init>(Lcom/mycompany/app/dialog/DialogSetAdblock;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 278
    .line 279
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAdblock$5;

    .line 280
    .line 281
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAdblock$5;-><init>(Lcom/mycompany/app/dialog/DialogSetAdblock;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAdblock;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 288
    .line 289
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAdblock$6;

    .line 290
    .line 291
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAdblock$6;-><init>(Lcom/mycompany/app/dialog/DialogSetAdblock;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 295
    .line 296
    .line 297
    :cond_5
    :goto_3
    return-void
.end method
