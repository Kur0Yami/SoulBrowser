.class Lcom/mycompany/app/dialog/DialogAllowPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogAllowPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$2;->c:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$2;->c:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    const/high16 v2, -0x1000000

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->g0:Lcom/mycompany/app/view/MyButtonImage;

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
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 41
    .line 42
    const v2, -0x70708

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    const/high16 v2, 0x21000000

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 63
    .line 64
    iput v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->m0:I

    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->e0:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_2

    .line 102
    :catch_0
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 103
    :goto_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->n0:Z

    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->d0:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookPop;->m(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->o0:Z

    .line 118
    .line 119
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 120
    .line 121
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->p0:Z

    .line 122
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 129
    .line 130
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pop_block:I

    .line 131
    .line 132
    sget-object v3, Lcom/mycompany/app/setting/SettingClean;->y2:[I

    .line 133
    .line 134
    iget v5, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->m0:I

    .line 135
    .line 136
    aget v3, v3, v5

    .line 137
    .line 138
    sget-object v6, Lcom/mycompany/app/setting/SettingClean;->z2:[I

    .line 139
    .line 140
    aget v6, v6, v5

    .line 141
    .line 142
    const/4 v7, 0x2

    .line 143
    move v5, v3

    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    invoke-direct {v2, v3, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 161
    .line 162
    sget v6, Lnet/kaki87/soul2/testing/R$string;->pop_allow_site:I

    .line 163
    .line 164
    iget-boolean v9, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->n0:Z

    .line 165
    .line 166
    const/4 v10, 0x1

    .line 167
    const/4 v8, 0x1

    .line 168
    const/4 v5, 0x2

    .line 169
    const/4 v7, 0x0

    .line 170
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 177
    .line 178
    sget v7, Lnet/kaki87/soul2/testing/R$string;->pop_allow_page:I

    .line 179
    .line 180
    iget-boolean v10, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->o0:Z

    .line 181
    .line 182
    const/4 v11, 0x1

    .line 183
    const/4 v9, 0x0

    .line 184
    const/4 v6, 0x3

    .line 185
    const/4 v8, 0x0

    .line 186
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 193
    .line 194
    sget v8, Lnet/kaki87/soul2/testing/R$string;->pop_white:I

    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v7, 0x4

    .line 199
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 207
    .line 208
    new-instance v5, Lcom/mycompany/app/dialog/DialogAllowPopup$3;

    .line 209
    .line 210
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogAllowPopup$3;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v4, v1, v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 214
    .line 215
    .line 216
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 224
    .line 225
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/dialog/DialogAllowPopup$4;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogAllowPopup$4;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/dialog/DialogAllowPopup$5;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogAllowPopup$5;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    :goto_3
    return-void
.end method
