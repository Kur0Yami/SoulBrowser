.class Lcom/mycompany/app/dialog/DialogBlockLink$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBlockLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$2;->c:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockLink$2;->c:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

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
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const/high16 v2, -0x1000000

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBlockLink;->D()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x12

    .line 86
    .line 87
    iput v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 88
    .line 89
    const/16 v4, 0xb

    .line 90
    .line 91
    iput v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 92
    .line 93
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/MainListLoader;

    .line 117
    .line 118
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 119
    .line 120
    new-instance v5, Lcom/mycompany/app/dialog/DialogBlockLink$6;

    .line 121
    .line 122
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogBlockLink$6;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

    .line 123
    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-direct {v1, v4, v6, v5}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->v0:Lcom/mycompany/app/main/MainListLoader;

    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 132
    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->v0:Lcom/mycompany/app/main/MainListLoader;

    .line 141
    .line 142
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 143
    .line 144
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 173
    .line 174
    iput v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->p0:I

    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 177
    .line 178
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->f0:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookLink;->n(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->q0:Z

    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 191
    .line 192
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->e0:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookLink;->o(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->r0:Z

    .line 203
    .line 204
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 205
    .line 206
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->s0:Z

    .line 207
    .line 208
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 209
    .line 210
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBlockLink;->B()Ljava/util/ArrayList;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    new-instance v5, Lcom/mycompany/app/dialog/DialogBlockLink$3;

    .line 220
    .line 221
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogBlockLink$3;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, v4, v3, v1, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 225
    .line 226
    .line 227
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 228
    .line 229
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 235
    .line 236
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 242
    .line 243
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockLink$4;

    .line 244
    .line 245
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockLink$4;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBlockLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 252
    .line 253
    new-instance v2, Lcom/mycompany/app/dialog/DialogBlockLink$5;

    .line 254
    .line 255
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBlockLink$5;-><init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 259
    .line 260
    .line 261
    :cond_6
    :goto_3
    return-void
.end method
