.class public Lcom/mycompany/app/main/MainLangAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;,
        Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;,
        Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Landroid/content/Context;

.field public final e:I

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Landroid/os/Handler;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ILcom/mycompany/app/main/MainLangAdapter$MainLangListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mycompany/app/main/MainLangAdapter;->j:Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->q:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    return v1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    move v0, v1

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :cond_4
    add-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainLangAdapter;->w(I)Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainLangAdapter;->w(I)Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 10
    .line 11
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainLangAdapter;->w(I)Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 16
    .line 17
    const v3, -0x70708

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/high16 v5, -0x1000000

    .line 22
    .line 23
    if-ne v2, v4, :cond_3

    .line 24
    .line 25
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    move v3, v5

    .line 30
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 35
    .line 36
    if-nez v2, :cond_4

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_4
    iget-boolean v6, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, -0x1

    .line 43
    const/4 v9, 0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    if-eqz v6, :cond_6

    .line 46
    .line 47
    iput v8, p0, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 48
    .line 49
    iput v8, p0, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 50
    .line 51
    invoke-virtual {v2, v10}, Landroid/view/View;->setClipToOutline(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainLangAdapter;->d()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sub-int/2addr v3, v9

    .line 61
    if-eq p2, v3, :cond_5

    .line 62
    .line 63
    move p2, v9

    .line 64
    goto :goto_1

    .line 65
    :cond_5
    move p2, v10

    .line 66
    :goto_1
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyLineRelative;->setDrawLine(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_8

    .line 73
    .line 74
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 75
    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    goto :goto_2

    .line 83
    :cond_7
    move v2, v10

    .line 84
    :goto_2
    if-nez v2, :cond_9

    .line 85
    .line 86
    :cond_8
    move v2, v10

    .line 87
    goto :goto_3

    .line 88
    :cond_9
    if-ne p2, v2, :cond_a

    .line 89
    .line 90
    move v2, v9

    .line 91
    goto :goto_3

    .line 92
    :cond_a
    sub-int/2addr v2, v4

    .line 93
    if-ne p2, v2, :cond_8

    .line 94
    .line 95
    move v2, v4

    .line 96
    :goto_3
    if-ne v2, v9, :cond_f

    .line 97
    .line 98
    iget v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 99
    .line 100
    if-eq v2, p2, :cond_c

    .line 101
    .line 102
    iput p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 103
    .line 104
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 105
    .line 106
    if-nez v2, :cond_b

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_b
    new-instance v4, Lcom/mycompany/app/main/MainLangAdapter$3;

    .line 110
    .line 111
    invoke-direct {v4}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v9}, Landroid/view/View;->setClipToOutline(Z)V

    .line 118
    .line 119
    .line 120
    :cond_c
    :goto_4
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainLangAdapter;->d()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    sub-int/2addr v4, v9

    .line 127
    if-eq p2, v4, :cond_d

    .line 128
    .line 129
    move p2, v9

    .line 130
    goto :goto_5

    .line 131
    :cond_d
    move p2, v10

    .line 132
    :goto_5
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyLineRelative;->setDrawLine(Z)V

    .line 133
    .line 134
    .line 135
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 136
    .line 137
    if-eqz p2, :cond_e

    .line 138
    .line 139
    move v3, v5

    .line 140
    :cond_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_f
    if-ne v2, v4, :cond_13

    .line 145
    .line 146
    iget v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 147
    .line 148
    if-eq v2, p2, :cond_11

    .line 149
    .line 150
    iput p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 151
    .line 152
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 153
    .line 154
    if-nez p2, :cond_10

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_10
    new-instance v2, Lcom/mycompany/app/main/MainLangAdapter$4;

    .line 158
    .line 159
    invoke-direct {v2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v9}, Landroid/view/View;->setClipToOutline(Z)V

    .line 166
    .line 167
    .line 168
    :cond_11
    :goto_6
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 169
    .line 170
    invoke-virtual {p2, v10}, Lcom/mycompany/app/view/MyLineRelative;->setDrawLine(Z)V

    .line 171
    .line 172
    .line 173
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 174
    .line 175
    if-eqz p2, :cond_12

    .line 176
    .line 177
    move v3, v5

    .line 178
    :cond_12
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 179
    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_13
    iget v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 183
    .line 184
    if-ne v2, p2, :cond_14

    .line 185
    .line 186
    iput v8, p0, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 187
    .line 188
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 189
    .line 190
    invoke-virtual {v2, v10}, Landroid/view/View;->setClipToOutline(Z)V

    .line 191
    .line 192
    .line 193
    :cond_14
    iget v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 194
    .line 195
    if-ne v2, p2, :cond_15

    .line 196
    .line 197
    iput v8, p0, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 198
    .line 199
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 200
    .line 201
    invoke-virtual {v2, v10}, Landroid/view/View;->setClipToOutline(Z)V

    .line 202
    .line 203
    .line 204
    :cond_15
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainLangAdapter;->d()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    sub-int/2addr v3, v9

    .line 211
    if-eq p2, v3, :cond_16

    .line 212
    .line 213
    move p2, v9

    .line 214
    goto :goto_7

    .line 215
    :cond_16
    move p2, v10

    .line 216
    :goto_7
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyLineRelative;->setDrawLine(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .line 221
    .line 222
    :goto_8
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 223
    .line 224
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 228
    .line 229
    new-instance v0, Lcom/mycompany/app/main/MainLangAdapter$1;

    .line 230
    .line 231
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainLangAdapter$1;-><init>(Lcom/mycompany/app/main/MainLangAdapter;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    iget-object p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    const v0, -0xbbcca

    .line 244
    .line 245
    .line 246
    const/16 v2, 0x8

    .line 247
    .line 248
    if-nez p2, :cond_19

    .line 249
    .line 250
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 251
    .line 252
    if-eqz p2, :cond_18

    .line 253
    .line 254
    iget-object p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-nez p2, :cond_18

    .line 261
    .line 262
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 263
    .line 264
    if-eqz p2, :cond_17

    .line 265
    .line 266
    move p2, v8

    .line 267
    goto :goto_9

    .line 268
    :cond_17
    move p2, v0

    .line 269
    :goto_9
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    iget-object v4, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 272
    .line 273
    iget-object v6, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v4, p2, v10, v6}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 280
    .line 281
    invoke-virtual {v3, p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 282
    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_18
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 286
    .line 287
    iget-object v3, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    :goto_a
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 293
    .line 294
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_19
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    :goto_b
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->l:Z

    .line 304
    .line 305
    if-eqz p2, :cond_1c

    .line 306
    .line 307
    iget-object p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-nez p2, :cond_1c

    .line 314
    .line 315
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 316
    .line 317
    if-eqz p2, :cond_1b

    .line 318
    .line 319
    iget-object p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-nez p2, :cond_1b

    .line 326
    .line 327
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 328
    .line 329
    if-eqz p2, :cond_1a

    .line 330
    .line 331
    goto :goto_c

    .line 332
    :cond_1a
    move v8, v0

    .line 333
    :goto_c
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    iget-object v3, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v4, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v3, v8, v10, v4}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 344
    .line 345
    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 346
    .line 347
    .line 348
    goto :goto_d

    .line 349
    :cond_1b
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 350
    .line 351
    iget-object v3, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    :goto_d
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 357
    .line 358
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    goto :goto_e

    .line 362
    :cond_1c
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    :goto_e
    iget p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 368
    .line 369
    iget v3, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 370
    .line 371
    if-eq p2, v3, :cond_1e

    .line 372
    .line 373
    add-int/lit16 v3, v3, -0x3e8

    .line 374
    .line 375
    if-ne p2, v3, :cond_1d

    .line 376
    .line 377
    goto :goto_f

    .line 378
    :cond_1d
    move p2, v10

    .line 379
    goto :goto_10

    .line 380
    :cond_1e
    :goto_f
    move p2, v9

    .line 381
    :goto_10
    iget v3, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 382
    .line 383
    if-nez v3, :cond_21

    .line 384
    .line 385
    if-eqz p2, :cond_21

    .line 386
    .line 387
    iget-object v3, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 388
    .line 389
    iput-object v3, p0, Lcom/mycompany/app/main/MainLangAdapter;->i:Ljava/lang/String;

    .line 390
    .line 391
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 392
    .line 393
    if-eqz v3, :cond_1f

    .line 394
    .line 395
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->x:Landroid/view/View;

    .line 396
    .line 397
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 398
    .line 399
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    .line 401
    .line 402
    goto :goto_11

    .line 403
    :cond_1f
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->x:Landroid/view/View;

    .line 404
    .line 405
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 406
    .line 407
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 408
    .line 409
    .line 410
    :goto_11
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->x:Landroid/view/View;

    .line 411
    .line 412
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 413
    .line 414
    if-eqz v4, :cond_20

    .line 415
    .line 416
    move v4, v2

    .line 417
    goto :goto_12

    .line 418
    :cond_20
    move v4, v10

    .line 419
    :goto_12
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    goto :goto_13

    .line 423
    :cond_21
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->x:Landroid/view/View;

    .line 424
    .line 425
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    :goto_13
    iget v3, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 429
    .line 430
    if-ne v3, v9, :cond_24

    .line 431
    .line 432
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 433
    .line 434
    if-eqz v3, :cond_22

    .line 435
    .line 436
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 437
    .line 438
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 441
    .line 442
    .line 443
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 444
    .line 445
    const v4, -0xc0c0c1

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 449
    .line 450
    .line 451
    goto :goto_14

    .line 452
    :cond_22
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 453
    .line 454
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 455
    .line 456
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 457
    .line 458
    .line 459
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 460
    .line 461
    const v4, -0x1f1f20

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 465
    .line 466
    .line 467
    :goto_14
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 468
    .line 469
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 470
    .line 471
    if-eqz v4, :cond_23

    .line 472
    .line 473
    goto :goto_15

    .line 474
    :cond_23
    move v2, v10

    .line 475
    :goto_15
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 476
    .line 477
    .line 478
    iget-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 479
    .line 480
    new-instance v3, Lcom/mycompany/app/main/MainLangAdapter$2;

    .line 481
    .line 482
    invoke-direct {v3, p0, v1}, Lcom/mycompany/app/main/MainLangAdapter$2;-><init>(Lcom/mycompany/app/main/MainLangAdapter;Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    .line 487
    .line 488
    goto :goto_16

    .line 489
    :cond_24
    iget-object v3, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 490
    .line 491
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    :goto_16
    const v2, -0x50506

    .line 495
    .line 496
    .line 497
    const v3, -0x3e3e3f

    .line 498
    .line 499
    .line 500
    if-eqz p2, :cond_25

    .line 501
    .line 502
    iget-object v4, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 503
    .line 504
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    .line 506
    .line 507
    goto :goto_19

    .line 508
    :cond_25
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 509
    .line 510
    if-eqz v4, :cond_27

    .line 511
    .line 512
    iget-object v4, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 513
    .line 514
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-nez v4, :cond_27

    .line 519
    .line 520
    iget-object v4, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 521
    .line 522
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 523
    .line 524
    if-eqz v6, :cond_26

    .line 525
    .line 526
    move v6, v3

    .line 527
    goto :goto_17

    .line 528
    :cond_26
    move v6, v5

    .line 529
    :goto_17
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    .line 531
    .line 532
    goto :goto_19

    .line 533
    :cond_27
    iget-object v4, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 534
    .line 535
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 536
    .line 537
    if-eqz v6, :cond_28

    .line 538
    .line 539
    move v6, v2

    .line 540
    goto :goto_18

    .line 541
    :cond_28
    move v6, v5

    .line 542
    :goto_18
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    .line 544
    .line 545
    :goto_19
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainLangAdapter;->l:Z

    .line 546
    .line 547
    if-eqz v4, :cond_2d

    .line 548
    .line 549
    if-eqz p2, :cond_29

    .line 550
    .line 551
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 552
    .line 553
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    .line 555
    .line 556
    goto :goto_1a

    .line 557
    :cond_29
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 558
    .line 559
    if-eqz p2, :cond_2b

    .line 560
    .line 561
    iget-object p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 564
    .line 565
    .line 566
    move-result p2

    .line 567
    if-nez p2, :cond_2b

    .line 568
    .line 569
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 570
    .line 571
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 572
    .line 573
    if-eqz v0, :cond_2a

    .line 574
    .line 575
    move v5, v3

    .line 576
    :cond_2a
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    .line 578
    .line 579
    goto :goto_1a

    .line 580
    :cond_2b
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 581
    .line 582
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 583
    .line 584
    if-eqz v0, :cond_2c

    .line 585
    .line 586
    move v5, v2

    .line 587
    :cond_2c
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    .line 589
    .line 590
    :cond_2d
    :goto_1a
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 591
    .line 592
    if-eqz p2, :cond_2e

    .line 593
    .line 594
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 595
    .line 596
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 597
    .line 598
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 599
    .line 600
    .line 601
    goto :goto_1b

    .line 602
    :cond_2e
    iget-object p2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 603
    .line 604
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 605
    .line 606
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 607
    .line 608
    .line 609
    :goto_1b
    iget p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 610
    .line 611
    iget v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 612
    .line 613
    if-ne p2, v0, :cond_2f

    .line 614
    .line 615
    iget-boolean p2, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->g:Z

    .line 616
    .line 617
    if-eqz p2, :cond_2f

    .line 618
    .line 619
    iget-object p1, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 620
    .line 621
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyLineRelative;->f()V

    .line 622
    .line 623
    .line 624
    goto :goto_1c

    .line 625
    :cond_2f
    iget-object p1, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 626
    .line 627
    iget-object p2, p1, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 628
    .line 629
    if-eqz p2, :cond_30

    .line 630
    .line 631
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 632
    .line 633
    .line 634
    iput-object v7, p1, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 635
    .line 636
    :cond_30
    :goto_1c
    iput-boolean v10, v1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->g:Z

    .line 637
    .line 638
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

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
    const/4 v1, 0x2

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x4

    .line 23
    .line 24
    invoke-direct {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    new-instance p2, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    const/4 v3, -0x2

    .line 44
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/view/MyLineRelative;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 58
    .line 59
    .line 60
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    .line 78
    .line 79
    const/16 v5, 0xf

    .line 80
    .line 81
    invoke-static {v2, v3, v5}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const/high16 v7, 0x41400000    # 12.0f

    .line 86
    .line 87
    invoke-static {p1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    float-to-int v7, v7

    .line 92
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 93
    .line 94
    .line 95
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-direct {v6, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    .line 107
    .line 108
    sget v7, Lnet/kaki87/soul2/testing/R$id;->lang_item_name:I

    .line 109
    .line 110
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 111
    .line 112
    .line 113
    const/4 v8, 0x1

    .line 114
    const/high16 v9, 0x41800000    # 16.0f

    .line 115
    .line 116
    invoke-virtual {v6, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 120
    .line 121
    .line 122
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    invoke-direct {v10, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    .line 126
    .line 127
    const/16 v0, 0x8

    .line 128
    .line 129
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 133
    .line 134
    .line 135
    const/4 v8, 0x3

    .line 136
    invoke-static {v2, v3, v8, v7}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 141
    .line 142
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    .line 144
    invoke-virtual {v4, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Landroid/view/View;

    .line 148
    .line 149
    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    const/high16 v3, 0x41c00000    # 24.0f

    .line 156
    .line 157
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    float-to-int v3, v3

    .line 162
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    .line 164
    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .line 166
    .line 167
    const/16 v3, 0x15

    .line 168
    .line 169
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    .line 174
    .line 175
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 176
    .line 177
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    invoke-direct {v4, p1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 189
    .line 190
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .line 198
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 199
    .line 200
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    .line 208
    .line 209
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    new-instance p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;

    .line 218
    .line 219
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    iput-object v1, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 223
    .line 224
    iput-object v6, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 225
    .line 226
    iput-object v10, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 227
    .line 228
    iput-object v2, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->x:Landroid/view/View;

    .line 229
    .line 230
    iput-object v4, p1, Lcom/mycompany/app/main/MainLangAdapter$ViewHolder;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    return-object p1
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 14
    .line 15
    iget v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 16
    .line 17
    const/16 v1, 0x3e8

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 25
    .line 26
    iget v1, p0, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbRecentLang;->f(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final w(I)Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lt p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    :goto_0
    return-object v1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 v0, 0x0

    .line 39
    :goto_1
    if-ge p1, v0, :cond_6

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    if-ltz p1, :cond_5

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lt p1, v0, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_5
    :goto_2
    return-object v1

    .line 64
    :cond_6
    sub-int/2addr p1, v0

    .line 65
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    if-ltz p1, :cond_8

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lt p1, v0, :cond_7

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_8
    :goto_3
    return-object v1
.end method

.method public final x()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    const v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v5, p0, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 30
    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    move v5, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    :try_start_0
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbRecentLang;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbRecentLang;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v7, "DbRecentLang_table"

    .line 52
    .line 53
    const-string v9, "_type=?"

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 64
    .line 65
    .line 66
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-object v0, v4

    .line 69
    :catch_1
    :cond_3
    move v5, v1

    .line 70
    :goto_0
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :cond_5
    const/4 v0, 0x1

    .line 80
    const/16 v5, 0x3e8

    .line 81
    .line 82
    if-nez v2, :cond_6

    .line 83
    .line 84
    iput-object v4, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 85
    .line 86
    iget v1, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 87
    .line 88
    if-lt v1, v5, :cond_d

    .line 89
    .line 90
    sub-int/2addr v1, v5

    .line 91
    iput v1, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v7, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    move v8, v1

    .line 106
    :goto_2
    if-ge v8, v7, :cond_b

    .line 107
    .line 108
    iget-object v9, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    check-cast v9, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 115
    .line 116
    if-nez v9, :cond_7

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    iget v10, v9, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 120
    .line 121
    if-eq v10, v0, :cond_8

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_8
    if-ge v8, v2, :cond_9

    .line 125
    .line 126
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_9
    iget v9, v9, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 131
    .line 132
    iget v10, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 133
    .line 134
    if-ne v9, v10, :cond_a

    .line 135
    .line 136
    add-int/lit16 v10, v10, -0x3e8

    .line 137
    .line 138
    iput v10, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 139
    .line 140
    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_c

    .line 148
    .line 149
    iput-object v4, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 150
    .line 151
    iget v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 152
    .line 153
    if-lt v2, v5, :cond_d

    .line 154
    .line 155
    sub-int/2addr v2, v5

    .line 156
    iput v2, p0, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_c
    new-instance v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    const/4 v4, 0x2

    .line 165
    iput v4, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 166
    .line 167
    iput v3, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 168
    .line 169
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    iput-object v6, p0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    .line 174
    :cond_d
    :goto_4
    return v0

    .line 175
    :catch_2
    :cond_e
    :goto_5
    return v1
.end method
