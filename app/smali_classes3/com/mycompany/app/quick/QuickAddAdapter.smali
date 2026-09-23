.class public Lcom/mycompany/app/quick/QuickAddAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;,
        Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;

.field public e:Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;

.field public f:Lcom/mycompany/app/main/MainListLoader;

.field public g:Ljava/util/regex/Pattern;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->e:Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;

    .line 5
    .line 6
    new-instance p2, Lcom/mycompany/app/main/MainListLoader;

    .line 7
    .line 8
    new-instance v0, Lcom/mycompany/app/quick/QuickAddAdapter$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickAddAdapter$1;-><init>(Lcom/mycompany/app/quick/QuickAddAdapter;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p2, p1, v1, v0}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 18
    .line 19
    return-void
.end method

.method public static v(Lcom/mycompany/app/quick/QuickAddAdapter;Landroid/view/View;)I
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
    instance-of v0, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;

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
    check-cast p0, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;

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
    iget v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

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

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    check-cast p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-ltz p2, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lt p2, v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 36
    :goto_1
    if-nez v0, :cond_3

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 46
    .line 47
    new-instance v2, Lcom/mycompany/app/quick/QuickAddAdapter$2;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/mycompany/app/quick/QuickAddAdapter$2;-><init>(Lcom/mycompany/app/quick/QuickAddAdapter;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    const/16 v3, 0x8

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    iget-object v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :goto_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 92
    .line 93
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    const v3, -0x50506

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    const v3, -0x3e3e3f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 116
    .line 117
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    const/high16 v3, -0x1000000

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    const v3, -0x9e9e9f

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    :goto_3
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->h()V

    .line 140
    .line 141
    .line 142
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 143
    .line 144
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 148
    .line 149
    if-eqz p1, :cond_d

    .line 150
    .line 151
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 152
    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 158
    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    iget p2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    if-ne p2, v0, :cond_7

    .line 165
    .line 166
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_shift_2_black_24:I

    .line 167
    .line 168
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_7
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 173
    .line 174
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    const-string v3, "\\p{Punct}"

    .line 185
    .line 186
    const v4, -0x70708

    .line 187
    .line 188
    .line 189
    if-eqz v1, :cond_a

    .line 190
    .line 191
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 192
    .line 193
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 196
    .line 197
    if-nez v1, :cond_9

    .line 198
    .line 199
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 204
    .line 205
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 206
    .line 207
    invoke-virtual {p1, v4, p2, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_a
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    iget v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 217
    .line 218
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 219
    .line 220
    const/16 v5, 0xb

    .line 221
    .line 222
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 223
    .line 224
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 225
    .line 226
    iput-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 229
    .line 230
    iput-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 233
    .line 234
    iput-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 235
    .line 236
    iget-wide v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 237
    .line 238
    iput-wide v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 239
    .line 240
    iput p2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 241
    .line 242
    invoke-static {v1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_b

    .line 251
    .line 252
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_b
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 262
    .line 263
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 266
    .line 267
    if-nez v2, :cond_c

    .line 268
    .line 269
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 274
    .line 275
    :cond_c
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 276
    .line 277
    invoke-virtual {p1, v4, p2, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 278
    .line 279
    .line 280
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 281
    .line 282
    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    :cond_d
    :goto_4
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/MyLineFrame;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, -0x2

    .line 23
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    invoke-direct {v4, p1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    .line 48
    .line 49
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 52
    .line 53
    .line 54
    const/high16 v5, 0x41400000    # 12.0f

    .line 55
    .line 56
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    float-to-int v5, v5

    .line 61
    int-to-float v5, v5

    .line 62
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

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
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/16 v5, 0x11

    .line 78
    .line 79
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    .line 81
    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    .line 98
    .line 99
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .line 101
    invoke-direct {v6, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    const v2, 0x800013

    .line 105
    .line 106
    .line 107
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    .line 109
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 110
    .line 111
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 112
    .line 113
    .line 114
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 115
    .line 116
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    invoke-direct {v2, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 128
    .line 129
    .line 130
    const/high16 v6, 0x41800000    # 16.0f

    .line 131
    .line 132
    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-direct {v6, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 144
    .line 145
    .line 146
    const/high16 p1, 0x41600000    # 14.0f

    .line 147
    .line 148
    invoke-virtual {v6, v5, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .line 153
    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .line 155
    .line 156
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 157
    .line 158
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    invoke-virtual {v1, v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;

    .line 164
    .line 165
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 169
    .line 170
    iput-object v4, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 171
    .line 172
    iput-object v2, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    iput-object v6, p1, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    return-object p1
.end method

.method public final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAddAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->h:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->e:Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->g:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
