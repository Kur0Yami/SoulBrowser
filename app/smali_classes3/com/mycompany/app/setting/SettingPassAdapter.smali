.class public Lcom/mycompany/app/setting/SettingPassAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;,
        Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;

.field public e:Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;

.field public f:Lcom/mycompany/app/main/MainListLoader;

.field public g:Ljava/util/regex/Pattern;

.field public h:I


# direct methods
.method public static v(Lcom/mycompany/app/setting/SettingPassAdapter;Landroid/view/View;)I
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    instance-of v0, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    move-object p0, p1

    .line 18
    check-cast p0, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;

    .line 19
    .line 20
    :goto_0
    if-eqz p0, :cond_4

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_4
    :goto_1
    const/4 p0, -0x1

    .line 33
    return p0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v0, v2

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    :goto_0
    return v1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    check-cast p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    if-ltz p2, :cond_d

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt p2, v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    if-gt p2, v0, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 51
    .line 52
    const/4 p2, 0x4

    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 67
    .line 68
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_dark_24:I

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 74
    .line 75
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 82
    .line 83
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_black_24:I

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 89
    .line 90
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 96
    .line 97
    new-instance p2, Lcom/mycompany/app/setting/SettingPassAdapter$2;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingPassAdapter$2;-><init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 107
    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :cond_6
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 116
    .line 117
    new-instance v3, Lcom/mycompany/app/setting/SettingPassAdapter$3;

    .line 118
    .line 119
    invoke-direct {v3, p0}, Lcom/mycompany/app/setting/SettingPassAdapter$3;-><init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    iget-object v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    iget-object v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    new-instance v3, Lcom/mycompany/app/setting/SettingPassAdapter$4;

    .line 147
    .line 148
    invoke-direct {v3, p0}, Lcom/mycompany/app/setting/SettingPassAdapter$4;-><init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 155
    .line 156
    if-eqz v1, :cond_7

    .line 157
    .line 158
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 159
    .line 160
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    const v3, -0x50506

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    const v3, -0x3e3e3f

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 189
    .line 190
    const v3, -0xc0c0c1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 198
    .line 199
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    const/high16 v3, -0x1000000

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    const v3, -0x9e9e9f

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 220
    .line 221
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 227
    .line 228
    const v3, -0x1f1f20

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 232
    .line 233
    .line 234
    :goto_1
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 235
    .line 236
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 240
    .line 241
    if-eqz p1, :cond_d

    .line 242
    .line 243
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 244
    .line 245
    if-nez v1, :cond_8

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const-string v3, "\\p{Punct}"

    .line 255
    .line 256
    const v4, -0x70708

    .line 257
    .line 258
    .line 259
    if-eqz v1, :cond_a

    .line 260
    .line 261
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 262
    .line 263
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 266
    .line 267
    if-nez v1, :cond_9

    .line 268
    .line 269
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 274
    .line 275
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 276
    .line 277
    invoke-virtual {p1, v4, p2, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_a
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 284
    .line 285
    .line 286
    iget v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 287
    .line 288
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 289
    .line 290
    const/16 v5, 0xb

    .line 291
    .line 292
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 293
    .line 294
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 295
    .line 296
    iput-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 297
    .line 298
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 299
    .line 300
    iput-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 301
    .line 302
    iget-wide v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 303
    .line 304
    iput-wide v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 305
    .line 306
    iput p2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 307
    .line 308
    invoke-static {v1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_b

    .line 317
    .line 318
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_b
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 328
    .line 329
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 330
    .line 331
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 332
    .line 333
    if-nez v2, :cond_c

    .line 334
    .line 335
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 340
    .line 341
    :cond_c
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 342
    .line 343
    invoke-virtual {p1, v4, p2, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 344
    .line 345
    .line 346
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 347
    .line 348
    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 349
    .line 350
    .line 351
    :cond_d
    :goto_2
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p2, v2, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    .line 24
    .line 25
    sget v0, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 26
    .line 27
    invoke-direct {p1, v1, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->z:Landroid/widget/ImageView;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    new-instance p2, Lcom/mycompany/app/view/MyLineFrame;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    const/4 v4, -0x2

    .line 54
    invoke-direct {v3, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lcom/mycompany/app/view/MyRoundImage;

    .line 61
    .line 62
    invoke-direct {v3, p1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    const/high16 v5, 0x41c00000    # 24.0f

    .line 66
    .line 67
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    float-to-int v5, v5

    .line 72
    div-int/lit8 v6, v5, 0x2

    .line 73
    .line 74
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 80
    .line 81
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 82
    .line 83
    .line 84
    int-to-float v7, v6

    .line 85
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 86
    .line 87
    .line 88
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 94
    .line 95
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    invoke-direct {v5, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    invoke-virtual {v5, v7, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    .line 111
    .line 112
    const/16 v6, 0x10

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 115
    .line 116
    .line 117
    sget v6, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    invoke-direct {v6, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    const v1, 0x800013

    .line 128
    .line 129
    .line 130
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    .line 132
    sget v1, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 133
    .line 134
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 135
    .line 136
    .line 137
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 138
    .line 139
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-direct {v1, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    .line 149
    .line 150
    sget v6, Lnet/kaki87/soul2/testing/R$id;->pass_item_name:I

    .line 151
    .line 152
    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 156
    .line 157
    .line 158
    const/high16 v7, 0x41800000    # 16.0f

    .line 159
    .line 160
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 164
    .line 165
    .line 166
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    invoke-direct {v7, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    .line 173
    .line 174
    const/high16 v0, 0x41600000    # 14.0f

    .line 175
    .line 176
    invoke-virtual {v7, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 177
    .line 178
    .line 179
    const/4 v0, 0x3

    .line 180
    invoke-static {v4, v4, v0, v6}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 185
    .line 186
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 187
    .line 188
    invoke-virtual {v5, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    invoke-direct {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    .line 200
    .line 201
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .line 203
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 204
    .line 205
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    .line 207
    .line 208
    const v2, 0x800005

    .line 209
    .line 210
    .line 211
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 212
    .line 213
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 214
    .line 215
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 216
    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    new-instance p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;

    .line 221
    .line 222
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 226
    .line 227
    iput-object v3, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 228
    .line 229
    iput-object v1, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    iput-object v7, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 232
    .line 233
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingPassAdapter$PassListHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 234
    .line 235
    return-object p1
.end method

.method public final w()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    return v0
.end method
