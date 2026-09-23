.class Lcom/mycompany/app/dialog/DialogBlockImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBlockImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage$2;->c:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage$2;->c:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    const v2, -0xdededf

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    const v2, -0xc0c0c1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    const v2, -0x50506

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    const/4 v2, -0x1

    .line 66
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    const v2, -0x1f1f20

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->B0:Lcom/mycompany/app/web/WebClean;

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->e0:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebClean;->U(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->B0:Lcom/mycompany/app/web/WebClean;

    .line 107
    .line 108
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebClean;->T(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 117
    .line 118
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    const/4 v3, 0x0

    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move v1, v3

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    :goto_1
    move v1, v2

    .line 132
    :goto_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->z0:Z

    .line 133
    .line 134
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 135
    .line 136
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->w0:Z

    .line 137
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 144
    .line 145
    invoke-direct {v4, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 152
    .line 153
    sget v7, Lnet/kaki87/soul2/testing/R$string;->item_block_site:I

    .line 154
    .line 155
    iget-boolean v10, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 156
    .line 157
    const/4 v11, 0x1

    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v6, 0x1

    .line 160
    const/4 v8, 0x0

    .line 161
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 168
    .line 169
    sget v8, Lnet/kaki87/soul2/testing/R$string;->item_block_page:I

    .line 170
    .line 171
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 172
    .line 173
    const/4 v12, 0x1

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v7, 0x2

    .line 176
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 183
    .line 184
    sget v9, Lnet/kaki87/soul2/testing/R$string;->blocked_image:I

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    const/4 v12, 0x0

    .line 188
    const/4 v8, 0x3

    .line 189
    invoke-direct/range {v7 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 197
    .line 198
    new-instance v5, Lcom/mycompany/app/dialog/DialogBlockImage$3;

    .line 199
    .line 200
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogBlockImage$3;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 204
    .line 205
    .line 206
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 214
    .line 215
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockImage$4;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockImage$4;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockImage$5;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockImage$5;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockImage$6;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockImage$6;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

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
