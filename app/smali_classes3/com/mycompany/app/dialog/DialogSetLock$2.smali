.class Lcom/mycompany/app/dialog/DialogSetLock$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetLock$2;->c:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetLock$2;->c:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->e0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->e0:Lcom/mycompany/app/view/MyLineText;

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
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 51
    .line 52
    iput v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 53
    .line 54
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    iget v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->b0:I

    .line 62
    .line 63
    and-int/lit8 v3, v2, 0x2

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x1

    .line 68
    if-ne v3, v4, :cond_2

    .line 69
    .line 70
    move v12, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v12, v5

    .line 73
    :goto_1
    and-int/lit8 v3, v2, 0x4

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    if-ne v3, v4, :cond_3

    .line 77
    .line 78
    move/from16 v18, v6

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move/from16 v18, v5

    .line 82
    .line 83
    :goto_2
    and-int/lit8 v3, v2, 0x8

    .line 84
    .line 85
    const/16 v4, 0x8

    .line 86
    .line 87
    if-ne v3, v4, :cond_4

    .line 88
    .line 89
    move/from16 v24, v6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move/from16 v24, v5

    .line 93
    .line 94
    :goto_3
    and-int/lit8 v3, v2, 0x10

    .line 95
    .line 96
    const/16 v4, 0x10

    .line 97
    .line 98
    if-ne v3, v4, :cond_5

    .line 99
    .line 100
    move/from16 v30, v6

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move/from16 v30, v5

    .line 104
    .line 105
    :goto_4
    and-int/lit8 v3, v2, 0x20

    .line 106
    .line 107
    const/16 v4, 0x20

    .line 108
    .line 109
    if-ne v3, v4, :cond_6

    .line 110
    .line 111
    move/from16 v36, v6

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    move/from16 v36, v5

    .line 115
    .line 116
    :goto_5
    const/16 v3, 0x40

    .line 117
    .line 118
    and-int/2addr v2, v3

    .line 119
    if-ne v2, v3, :cond_7

    .line 120
    .line 121
    move/from16 v42, v6

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_7
    move/from16 v42, v5

    .line 125
    .line 126
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 132
    .line 133
    sget v9, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 134
    .line 135
    const/4 v13, 0x1

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v10, 0x0

    .line 139
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 146
    .line 147
    sget v15, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 148
    .line 149
    const/16 v19, 0x1

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    const/4 v14, 0x1

    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    invoke-direct/range {v13 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v19, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 163
    .line 164
    sget v21, Lnet/kaki87/soul2/testing/R$string;->down_list:I

    .line 165
    .line 166
    const/16 v25, 0x1

    .line 167
    .line 168
    const/16 v23, 0x0

    .line 169
    .line 170
    const/16 v20, 0x2

    .line 171
    .line 172
    const/16 v22, 0x0

    .line 173
    .line 174
    invoke-direct/range {v19 .. v25}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v3, v19

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v25, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 183
    .line 184
    sget v27, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 185
    .line 186
    const/16 v31, 0x1

    .line 187
    .line 188
    const/16 v29, 0x0

    .line 189
    .line 190
    const/16 v26, 0x3

    .line 191
    .line 192
    const/16 v28, 0x0

    .line 193
    .line 194
    invoke-direct/range {v25 .. v31}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 195
    .line 196
    .line 197
    move-object/from16 v3, v25

    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance v31, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 203
    .line 204
    sget v33, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 205
    .line 206
    const/16 v37, 0x1

    .line 207
    .line 208
    const/16 v35, 0x0

    .line 209
    .line 210
    const/16 v32, 0x4

    .line 211
    .line 212
    const/16 v34, 0x0

    .line 213
    .line 214
    invoke-direct/range {v31 .. v37}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v3, v31

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v37, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 223
    .line 224
    sget v39, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 225
    .line 226
    const/16 v43, 0x1

    .line 227
    .line 228
    const/16 v41, 0x0

    .line 229
    .line 230
    const/16 v38, 0x5

    .line 231
    .line 232
    const/16 v40, 0x0

    .line 233
    .line 234
    invoke-direct/range {v37 .. v43}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v3, v37

    .line 238
    .line 239
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 244
    .line 245
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetLock$3;

    .line 246
    .line 247
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogSetLock$3;-><init>(Lcom/mycompany/app/dialog/DialogSetLock;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v4, v2, v6, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 251
    .line 252
    .line 253
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetLock;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 254
    .line 255
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 261
    .line 262
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetLock;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 265
    .line 266
    .line 267
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 268
    .line 269
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetLock$4;

    .line 270
    .line 271
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetLock$4;-><init>(Lcom/mycompany/app/dialog/DialogSetLock;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetLock;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 278
    .line 279
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetLock$5;

    .line 280
    .line 281
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetLock$5;-><init>(Lcom/mycompany/app/dialog/DialogSetLock;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 285
    .line 286
    .line 287
    :cond_8
    :goto_7
    return-void
.end method
