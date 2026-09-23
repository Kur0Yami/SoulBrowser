.class Lcom/mycompany/app/dialog/DialogSetSuggest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetSuggest;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest$2;->c:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSuggest$2;->c:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->b0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    const v3, -0x50506

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 43
    .line 44
    const v3, -0xe19938

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    const/4 v4, 0x1

    .line 54
    if-gez v2, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f5()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    sput v4, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sput v3, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 66
    .line 67
    :goto_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->b0:Landroid/content/Context;

    .line 68
    .line 69
    const-string v5, "mSugEng"

    .line 70
    .line 71
    sget v6, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 72
    .line 73
    const/16 v7, 0xe

    .line 74
    .line 75
    invoke-static {v2, v7, v6, v5}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 79
    .line 80
    iput v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->h0:I

    .line 81
    .line 82
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 83
    .line 84
    iput v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 85
    .line 86
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    sget v5, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 91
    .line 92
    .line 93
    iget v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 94
    .line 95
    and-int/lit8 v5, v2, 0x2

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    if-ne v5, v3, :cond_4

    .line 99
    .line 100
    move v12, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move v12, v6

    .line 103
    :goto_2
    and-int/lit8 v3, v2, 0x4

    .line 104
    .line 105
    const/4 v5, 0x4

    .line 106
    if-ne v3, v5, :cond_5

    .line 107
    .line 108
    move/from16 v18, v4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move/from16 v18, v6

    .line 112
    .line 113
    :goto_3
    and-int/lit8 v3, v2, 0x8

    .line 114
    .line 115
    const/16 v5, 0x8

    .line 116
    .line 117
    if-ne v3, v5, :cond_6

    .line 118
    .line 119
    move/from16 v24, v4

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    move/from16 v24, v6

    .line 123
    .line 124
    :goto_4
    const/16 v3, 0x10

    .line 125
    .line 126
    and-int/2addr v2, v3

    .line 127
    if-ne v2, v3, :cond_7

    .line 128
    .line 129
    move/from16 v30, v4

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_7
    move/from16 v30, v6

    .line 133
    .line 134
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 140
    .line 141
    sget v7, Lnet/kaki87/soul2/testing/R$string;->suggest_engine:I

    .line 142
    .line 143
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetSuggest;->j0:[I

    .line 144
    .line 145
    iget v6, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->h0:I

    .line 146
    .line 147
    aget v8, v3, v6

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 159
    .line 160
    sget v9, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 161
    .line 162
    const/4 v13, 0x1

    .line 163
    const/4 v11, 0x0

    .line 164
    const/4 v8, 0x1

    .line 165
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 172
    .line 173
    sget v15, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 174
    .line 175
    const/16 v19, 0x1

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    const/4 v14, 0x2

    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    invoke-direct/range {v13 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    new-instance v19, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 189
    .line 190
    sget v21, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 191
    .line 192
    const/16 v25, 0x1

    .line 193
    .line 194
    const/16 v23, 0x0

    .line 195
    .line 196
    const/16 v20, 0x3

    .line 197
    .line 198
    const/16 v22, 0x0

    .line 199
    .line 200
    invoke-direct/range {v19 .. v25}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v3, v19

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    new-instance v25, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 209
    .line 210
    sget v27, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 211
    .line 212
    const/16 v31, 0x1

    .line 213
    .line 214
    const/16 v29, 0x0

    .line 215
    .line 216
    const/16 v26, 0x4

    .line 217
    .line 218
    const/16 v28, 0x0

    .line 219
    .line 220
    invoke-direct/range {v25 .. v31}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v3, v25

    .line 224
    .line 225
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 230
    .line 231
    new-instance v6, Lcom/mycompany/app/dialog/DialogSetSuggest$3;

    .line 232
    .line 233
    invoke-direct {v6, v1}, Lcom/mycompany/app/dialog/DialogSetSuggest$3;-><init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v5, v2, v4, v3, v6}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 237
    .line 238
    .line 239
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 240
    .line 241
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 247
    .line 248
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 254
    .line 255
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetSuggest$4;

    .line 256
    .line 257
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetSuggest$4;-><init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetSuggest;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 264
    .line 265
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetSuggest$5;

    .line 266
    .line 267
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetSuggest$5;-><init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 271
    .line 272
    .line 273
    :cond_8
    :goto_6
    return-void
.end method
