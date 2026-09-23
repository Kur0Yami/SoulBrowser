.class Lcom/mycompany/app/setting/SettingPassList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingPassList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList$1;->c:Lcom/mycompany/app/setting/SettingPassList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingPassList;->t2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$1;->c:Lcom/mycompany/app/setting/SettingPassList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    const v2, -0x50506

    .line 13
    .line 14
    .line 15
    const/high16 v3, -0x1000000

    .line 16
    .line 17
    const/high16 v4, 0x21000000

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 24
    .line 25
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    const v5, -0xc0c0c1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_24:I

    .line 44
    .line 45
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 66
    .line 67
    const v5, -0xdededf

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_24:I

    .line 94
    .line 95
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 106
    .line 107
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    const/4 v5, -0x1

    .line 118
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    new-instance v5, Lcom/mycompany/app/setting/SettingPassList$2;

    .line 124
    .line 125
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingPassList$2;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    new-instance v5, Lcom/mycompany/app/setting/SettingPassList$3;

    .line 134
    .line 135
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingPassList$3;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    new-instance v5, Lcom/mycompany/app/setting/SettingPassList$4;

    .line 144
    .line 145
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingPassList$4;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 152
    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 156
    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 160
    .line 161
    if-eqz v5, :cond_2

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 167
    .line 168
    const v2, -0xd8d8d9

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 179
    .line 180
    const v2, -0x70708

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 184
    .line 185
    .line 186
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 187
    .line 188
    new-instance v2, Lcom/mycompany/app/setting/SettingPassList$5;

    .line 189
    .line 190
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingPassList$5;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->Z1:Lcom/mycompany/app/view/MyScrollBar;

    .line 197
    .line 198
    new-instance v2, Lcom/mycompany/app/setting/SettingPassList$6;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingPassList$6;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 207
    .line 208
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 209
    .line 210
    new-instance v3, Lcom/mycompany/app/setting/SettingPassList$7;

    .line 211
    .line 212
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingPassList$7;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->e:Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;

    .line 219
    .line 220
    new-instance v3, Lcom/mycompany/app/main/MainListLoader;

    .line 221
    .line 222
    new-instance v4, Lcom/mycompany/app/setting/SettingPassAdapter$1;

    .line 223
    .line 224
    invoke-direct {v4, v1}, Lcom/mycompany/app/setting/SettingPassAdapter$1;-><init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    invoke-direct {v3, v2, v5, v4}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 229
    .line 230
    .line 231
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 232
    .line 233
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 234
    .line 235
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 236
    .line 237
    const/4 v2, 0x1

    .line 238
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 239
    .line 240
    .line 241
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->M1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 242
    .line 243
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 244
    .line 245
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 249
    .line 250
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 251
    .line 252
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 256
    .line 257
    new-instance v3, Lcom/mycompany/app/setting/SettingPassList$8;

    .line 258
    .line 259
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingPassList$8;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 268
    .line 269
    .line 270
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 271
    .line 272
    invoke-virtual {v0, v1, v5}, Lcom/mycompany/app/setting/SettingPassList;->P0(ZZ)V

    .line 273
    .line 274
    .line 275
    return-void
.end method
