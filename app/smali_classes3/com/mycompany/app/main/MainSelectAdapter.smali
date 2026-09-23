.class public Lcom/mycompany/app/main/MainSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;,
        Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;,
        Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;

.field public e:I

.field public f:I

.field public final g:Z

.field public h:Z

.field public i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

.field public j:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

.field public k:Z

.field public l:Ljava/util/regex/Pattern;

.field public m:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->g:Z

    .line 4
    iput-object p2, p0, Lcom/mycompany/app/main/MainSelectAdapter;->i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 7
    iput p3, p0, Lcom/mycompany/app/main/MainSelectAdapter;->e:I

    .line 8
    iput p2, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 9
    iput-boolean p4, p0, Lcom/mycompany/app/main/MainSelectAdapter;->g:Z

    .line 10
    iput-object p5, p0, Lcom/mycompany/app/main/MainSelectAdapter;->i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->m:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 21
    .line 22
    iget p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 23
    .line 24
    int-to-long v0, p1

    .line 25
    return-wide v0

    .line 26
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    return-wide v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_2b

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_15

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainSelectAdapter;->v(I)Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_15

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->f:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 29
    .line 30
    new-instance v3, Lcom/mycompany/app/main/MainSelectAdapter$1;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/mycompany/app/main/MainSelectAdapter$1;-><init>(Lcom/mycompany/app/main/MainSelectAdapter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainSelectAdapter;->g:Z

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget-object v2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sub-int/2addr v5, v3

    .line 53
    if-eq p2, v5, :cond_2

    .line 54
    .line 55
    move p2, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move p2, v4

    .line 58
    :goto_0
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyLineRelative;->setDrawLine(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainSelectAdapter;->h:Z

    .line 62
    .line 63
    const v2, -0xbbcca

    .line 64
    .line 65
    .line 66
    const/16 v5, 0x8

    .line 67
    .line 68
    if-eqz p2, :cond_6

    .line 69
    .line 70
    iget p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 71
    .line 72
    iget v6, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 73
    .line 74
    if-ne p2, v6, :cond_5

    .line 75
    .line 76
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->D:Lcom/mycompany/app/view/MyCircleView;

    .line 77
    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    new-instance p2, Lcom/mycompany/app/view/MyCircleView;

    .line 81
    .line 82
    iget-object v6, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-direct {p2, v6}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->D:Lcom/mycompany/app/view/MyCircleView;

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyCircleView;->setColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->D:Lcom/mycompany/app/view/MyCircleView;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const/high16 v6, 0x40c00000    # 6.0f

    .line 103
    .line 104
    invoke-static {p2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .line 114
    invoke-direct {v6, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 118
    .line 119
    mul-int/lit8 p2, p2, 0xc

    .line 120
    .line 121
    invoke-virtual {v6, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 122
    .line 123
    .line 124
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 125
    .line 126
    mul-int/lit8 p2, p2, 0x3

    .line 127
    .line 128
    iput p2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    .line 130
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 131
    .line 132
    iget-object v7, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->D:Lcom/mycompany/app/view/MyCircleView;

    .line 133
    .line 134
    invoke-virtual {p2, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->D:Lcom/mycompany/app/view/MyCircleView;

    .line 138
    .line 139
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->D:Lcom/mycompany/app/view/MyCircleView;

    .line 144
    .line 145
    if-eqz p2, :cond_6

    .line 146
    .line 147
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_1
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 151
    .line 152
    if-eqz p2, :cond_c

    .line 153
    .line 154
    iget v6, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->b:I

    .line 155
    .line 156
    if-eqz v6, :cond_8

    .line 157
    .line 158
    iget v7, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    .line 159
    .line 160
    iget-object v8, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v9, p0, Lcom/mycompany/app/main/MainSelectAdapter;->l:Ljava/util/regex/Pattern;

    .line 163
    .line 164
    if-nez v9, :cond_7

    .line 165
    .line 166
    const-string v9, "\\p{Punct}"

    .line 167
    .line 168
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    iput-object v9, p0, Lcom/mycompany/app/main/MainSelectAdapter;->l:Ljava/util/regex/Pattern;

    .line 173
    .line 174
    :cond_7
    iget-object v9, p0, Lcom/mycompany/app/main/MainSelectAdapter;->l:Ljava/util/regex/Pattern;

    .line 175
    .line 176
    invoke-virtual {p2, v6, v7, v8, v9}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 180
    .line 181
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_8
    iget v6, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    .line 186
    .line 187
    if-lez v6, :cond_b

    .line 188
    .line 189
    iget v7, p0, Lcom/mycompany/app/main/MainSelectAdapter;->e:I

    .line 190
    .line 191
    if-ne v7, v3, :cond_9

    .line 192
    .line 193
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_9
    const/4 v8, 0x5

    .line 198
    if-ne v7, v8, :cond_a

    .line 199
    .line 200
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    .line 202
    .line 203
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 204
    .line 205
    const/high16 v6, 0x3f800000    # 1.0f

    .line 206
    .line 207
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_a
    invoke-virtual {p2, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 212
    .line 213
    .line 214
    :goto_2
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 215
    .line 216
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_b
    invoke-virtual {p2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    :cond_c
    :goto_3
    iget p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->d:I

    .line 224
    .line 225
    if-lez p2, :cond_d

    .line 226
    .line 227
    iget-object v6, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 233
    .line 234
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_d
    iget-object p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-nez p2, :cond_10

    .line 245
    .line 246
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainSelectAdapter;->k:Z

    .line 247
    .line 248
    if-eqz p2, :cond_f

    .line 249
    .line 250
    iget-object p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->h:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-nez p2, :cond_f

    .line 257
    .line 258
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 259
    .line 260
    if-eqz p2, :cond_e

    .line 261
    .line 262
    const/4 p2, -0x1

    .line 263
    goto :goto_4

    .line 264
    :cond_e
    move p2, v2

    .line 265
    :goto_4
    iget-object v6, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 266
    .line 267
    iget-object v7, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v8, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->h:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v7, p2, v4, v8}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 276
    .line 277
    invoke-virtual {v6, p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_f
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    iget-object v6, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    :goto_5
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_10
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 295
    .line 296
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    :goto_6
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    if-eqz p2, :cond_13

    .line 302
    .line 303
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-nez p2, :cond_12

    .line 308
    .line 309
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 310
    .line 311
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 315
    .line 316
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 317
    .line 318
    if-eqz v1, :cond_11

    .line 319
    .line 320
    const v1, -0x4e3a0c

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_11
    const v1, -0xc0ae4b

    .line 325
    .line 326
    .line 327
    :goto_7
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    .line 330
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_12
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    :cond_13
    :goto_8
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MySelectView;

    .line 342
    .line 343
    if-eqz p2, :cond_16

    .line 344
    .line 345
    iget v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 346
    .line 347
    iget v3, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 348
    .line 349
    if-ne v1, v3, :cond_15

    .line 350
    .line 351
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 352
    .line 353
    if-eqz v1, :cond_14

    .line 354
    .line 355
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MySelectView;->c(I)V

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_14
    invoke-virtual {p2, v5}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_15
    invoke-virtual {p2, v5}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    :goto_9
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 367
    .line 368
    goto :goto_c

    .line 369
    :cond_16
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MyButtonCheck;

    .line 370
    .line 371
    if-eqz p2, :cond_19

    .line 372
    .line 373
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 374
    .line 375
    if-eqz v1, :cond_17

    .line 376
    .line 377
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 378
    .line 379
    invoke-virtual {p2, v1, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 380
    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_17
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 384
    .line 385
    invoke-virtual {p2, v1, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 386
    .line 387
    .line 388
    :goto_a
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MyButtonCheck;

    .line 389
    .line 390
    iget v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 391
    .line 392
    iget v6, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 393
    .line 394
    if-ne v1, v6, :cond_18

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_18
    move v3, v4

    .line 398
    :goto_b
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 399
    .line 400
    invoke-virtual {p2, v3, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 401
    .line 402
    .line 403
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 404
    .line 405
    :cond_19
    :goto_c
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 406
    .line 407
    if-eqz p2, :cond_1e

    .line 408
    .line 409
    iget p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 410
    .line 411
    iget v1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 412
    .line 413
    if-ne p2, v1, :cond_1a

    .line 414
    .line 415
    iget-boolean p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 416
    .line 417
    if-eqz p2, :cond_1a

    .line 418
    .line 419
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 420
    .line 421
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyLineRelative;->f()V

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_1a
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 426
    .line 427
    iget-object v1, p2, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 428
    .line 429
    if-eqz v1, :cond_1b

    .line 430
    .line 431
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 432
    .line 433
    .line 434
    const/4 v1, 0x0

    .line 435
    iput-object v1, p2, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 436
    .line 437
    :cond_1b
    :goto_d
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 438
    .line 439
    iget p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 440
    .line 441
    iget v1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 442
    .line 443
    if-ne p2, v1, :cond_1d

    .line 444
    .line 445
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 446
    .line 447
    if-eqz p2, :cond_1c

    .line 448
    .line 449
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 450
    .line 451
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 452
    .line 453
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 454
    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_1c
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 458
    .line 459
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 460
    .line 461
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    .line 463
    .line 464
    :goto_e
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 465
    .line 466
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    goto :goto_f

    .line 470
    :cond_1d
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 471
    .line 472
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    :cond_1e
    :goto_f
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->A:Landroid/view/View;

    .line 476
    .line 477
    if-eqz p2, :cond_1f

    .line 478
    .line 479
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$2;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    .line 486
    .line 487
    :cond_1f
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MySwitchView;

    .line 488
    .line 489
    if-eqz p2, :cond_20

    .line 490
    .line 491
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MySwitchView;

    .line 495
    .line 496
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->j:Z

    .line 497
    .line 498
    invoke-virtual {p2, v1, v4}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 499
    .line 500
    .line 501
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MySwitchView;

    .line 502
    .line 503
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$3;

    .line 504
    .line 505
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainSelectAdapter$3;-><init>(Lcom/mycompany/app/main/MainSelectAdapter;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    .line 510
    .line 511
    :cond_20
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 512
    .line 513
    if-eqz p2, :cond_21

    .line 514
    .line 515
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 516
    .line 517
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 518
    .line 519
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    .line 521
    .line 522
    goto :goto_10

    .line 523
    :cond_21
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 524
    .line 525
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 526
    .line 527
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 528
    .line 529
    .line 530
    :goto_10
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 531
    .line 532
    const v1, -0x50506

    .line 533
    .line 534
    .line 535
    const/high16 v3, -0x1000000

    .line 536
    .line 537
    if-nez p2, :cond_24

    .line 538
    .line 539
    iget-object p2, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MySelectView;

    .line 540
    .line 541
    if-eqz p2, :cond_22

    .line 542
    .line 543
    goto :goto_12

    .line 544
    :cond_22
    iget-object p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 545
    .line 546
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 547
    .line 548
    if-eqz p2, :cond_23

    .line 549
    .line 550
    goto :goto_11

    .line 551
    :cond_23
    move v1, v3

    .line 552
    :goto_11
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :cond_24
    :goto_12
    iget p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 557
    .line 558
    iget v4, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 559
    .line 560
    if-ne p2, v4, :cond_25

    .line 561
    .line 562
    iget-object p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 563
    .line 564
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    .line 566
    .line 567
    return-void

    .line 568
    :cond_25
    iget-boolean p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->k:Z

    .line 569
    .line 570
    if-eqz p2, :cond_27

    .line 571
    .line 572
    iget-object p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 573
    .line 574
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 575
    .line 576
    if-eqz p2, :cond_26

    .line 577
    .line 578
    const p2, -0x7f7f80

    .line 579
    .line 580
    .line 581
    goto :goto_13

    .line 582
    :cond_26
    const p2, -0x252526

    .line 583
    .line 584
    .line 585
    :goto_13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :cond_27
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainSelectAdapter;->k:Z

    .line 590
    .line 591
    if-eqz p2, :cond_29

    .line 592
    .line 593
    iget-object p2, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->h:Ljava/lang/String;

    .line 594
    .line 595
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 596
    .line 597
    .line 598
    move-result p2

    .line 599
    if-nez p2, :cond_29

    .line 600
    .line 601
    iget-object p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 602
    .line 603
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 604
    .line 605
    if-eqz p2, :cond_28

    .line 606
    .line 607
    const v3, -0x3e3e3f

    .line 608
    .line 609
    .line 610
    :cond_28
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :cond_29
    iget-object p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 615
    .line 616
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 617
    .line 618
    if-eqz p2, :cond_2a

    .line 619
    .line 620
    goto :goto_14

    .line 621
    :cond_2a
    move v1, v3

    .line 622
    :goto_14
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    .line 624
    .line 625
    :cond_2b
    :goto_15
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    move-object/from16 v2, p0

    .line 10
    .line 11
    iget v3, v2, Lcom/mycompany/app/main/MainSelectAdapter;->e:I

    .line 12
    .line 13
    const/high16 v4, 0x41a00000    # 20.0f

    .line 14
    .line 15
    const/4 v8, -0x2

    .line 16
    const/4 v9, 0x2

    .line 17
    const/16 v10, 0xf

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/high16 v12, 0x41800000    # 16.0f

    .line 21
    .line 22
    const/4 v13, -0x1

    .line 23
    const/4 v14, 0x1

    .line 24
    if-ne v3, v14, :cond_1

    .line 25
    .line 26
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 32
    .line 33
    invoke-virtual {v3, v15}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 34
    .line 35
    .line 36
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    sget v5, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 39
    .line 40
    invoke-direct {v15, v13, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    sget v15, Lnet/kaki87/soul2/testing/R$id;->sel_icon_icon:I

    .line 52
    .line 53
    invoke-virtual {v5, v15}, Landroid/view/View;->setId(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    float-to-int v4, v4

    .line 61
    invoke-static {v4, v4, v10}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/high16 v7, 0x41900000    # 18.0f

    .line 66
    .line 67
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    float-to-int v6, v6

    .line 72
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-direct {v4, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    .line 82
    .line 83
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 84
    .line 85
    invoke-virtual {v4, v11, v1, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 92
    .line 93
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .line 101
    invoke-direct {v1, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    .line 106
    .line 107
    const/16 v6, 0x11

    .line 108
    .line 109
    invoke-virtual {v1, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    float-to-int v6, v6

    .line 117
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    .line 119
    .line 120
    const/high16 v6, 0x42200000    # 40.0f

    .line 121
    .line 122
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    float-to-int v6, v6

    .line 127
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Landroid/view/View;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    const/16 v6, 0x8

    .line 139
    .line 140
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    const/high16 v6, 0x41c00000    # 24.0f

    .line 144
    .line 145
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    float-to-int v0, v0

    .line 150
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    .line 152
    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .line 154
    .line 155
    const/16 v0, 0x15

    .line 156
    .line 157
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    .line 162
    .line 163
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 164
    .line 165
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 172
    .line 173
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    iput-object v3, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 177
    .line 178
    iput-object v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    iput-object v5, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 181
    .line 182
    iput-object v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->C:Landroid/view/View;

    .line 183
    .line 184
    return-object v0

    .line 185
    :cond_1
    const/high16 v5, 0x42000000    # 32.0f

    .line 186
    .line 187
    const/high16 v6, 0x41400000    # 12.0f

    .line 188
    .line 189
    if-ne v3, v9, :cond_2

    .line 190
    .line 191
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative;

    .line 192
    .line 193
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 199
    .line 200
    .line 201
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 202
    .line 203
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 204
    .line 205
    invoke-direct {v4, v13, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Lcom/mycompany/app/view/MySelectView;

    .line 212
    .line 213
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    const/16 v7, 0x8

    .line 217
    .line 218
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 222
    .line 223
    invoke-virtual {v3, v4, v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 224
    .line 225
    .line 226
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 227
    .line 228
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    sget v15, Lnet/kaki87/soul2/testing/R$id;->sel_select_icon:I

    .line 232
    .line 233
    invoke-virtual {v7, v15}, Landroid/view/View;->setId(I)V

    .line 234
    .line 235
    .line 236
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 239
    .line 240
    .line 241
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 242
    .line 243
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 244
    .line 245
    .line 246
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 247
    .line 248
    int-to-float v8, v8

    .line 249
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    float-to-int v5, v5

    .line 257
    invoke-static {v5, v5, v10}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    float-to-int v8, v8

    .line 266
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    .line 274
    invoke-direct {v5, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    .line 276
    .line 277
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 278
    .line 279
    invoke-virtual {v5, v11, v1, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 283
    .line 284
    .line 285
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 286
    .line 287
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 291
    .line 292
    .line 293
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 294
    .line 295
    const/4 v8, -0x2

    .line 296
    invoke-direct {v1, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 300
    .line 301
    .line 302
    const/16 v8, 0x11

    .line 303
    .line 304
    invoke-virtual {v1, v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    .line 306
    .line 307
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    float-to-int v0, v0

    .line 312
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 313
    .line 314
    .line 315
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 324
    .line 325
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 326
    .line 327
    .line 328
    iput-object v3, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 329
    .line 330
    iput-object v5, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    iput-object v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MySelectView;

    .line 333
    .line 334
    iput-object v7, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 335
    .line 336
    return-object v0

    .line 337
    :cond_2
    const/4 v7, 0x3

    .line 338
    if-ne v3, v7, :cond_3

    .line 339
    .line 340
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative;

    .line 341
    .line 342
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 346
    .line 347
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 348
    .line 349
    .line 350
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 351
    .line 352
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 353
    .line 354
    invoke-virtual {v3, v4, v11, v5, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 355
    .line 356
    .line 357
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 358
    .line 359
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 360
    .line 361
    .line 362
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 363
    .line 364
    const/4 v8, -0x2

    .line 365
    invoke-direct {v4, v13, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    .line 370
    .line 371
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 372
    .line 373
    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 377
    .line 378
    invoke-virtual {v4, v11, v5, v11, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 379
    .line 380
    .line 381
    invoke-static {v13, v8, v10}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 386
    .line 387
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 394
    .line 395
    invoke-direct {v5, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    .line 397
    .line 398
    sget v6, Lnet/kaki87/soul2/testing/R$id;->sel_check_name:I

    .line 399
    .line 400
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v5, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v5, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 407
    .line 408
    .line 409
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 410
    .line 411
    invoke-direct {v9, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 412
    .line 413
    .line 414
    const/high16 v1, 0x41600000    # 14.0f

    .line 415
    .line 416
    invoke-virtual {v9, v14, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 417
    .line 418
    .line 419
    const/16 v1, 0x8

    .line 420
    .line 421
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    invoke-static {v13, v8, v7, v6}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 429
    .line 430
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 431
    .line 432
    invoke-virtual {v4, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    .line 434
    .line 435
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck;

    .line 436
    .line 437
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 441
    .line 442
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 443
    .line 444
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 445
    .line 446
    .line 447
    const/16 v4, 0x15

    .line 448
    .line 449
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .line 457
    .line 458
    new-instance v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 459
    .line 460
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    iput-object v3, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 464
    .line 465
    iput-object v5, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 466
    .line 467
    iput-object v9, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 468
    .line 469
    iput-object v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MyButtonCheck;

    .line 470
    .line 471
    return-object v0

    .line 472
    :cond_3
    const/4 v7, 0x4

    .line 473
    if-ne v3, v7, :cond_4

    .line 474
    .line 475
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative;

    .line 476
    .line 477
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 478
    .line 479
    .line 480
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 481
    .line 482
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 483
    .line 484
    .line 485
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 486
    .line 487
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 488
    .line 489
    invoke-direct {v4, v13, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    new-instance v4, Lcom/mycompany/app/view/MySelectView;

    .line 496
    .line 497
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    .line 498
    .line 499
    .line 500
    const/16 v7, 0x8

    .line 501
    .line 502
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 503
    .line 504
    .line 505
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 506
    .line 507
    invoke-virtual {v3, v4, v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 508
    .line 509
    .line 510
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 511
    .line 512
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 513
    .line 514
    .line 515
    sget v15, Lnet/kaki87/soul2/testing/R$id;->sel_switch_icon:I

    .line 516
    .line 517
    invoke-virtual {v7, v15}, Landroid/view/View;->setId(I)V

    .line 518
    .line 519
    .line 520
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 521
    .line 522
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 523
    .line 524
    .line 525
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 526
    .line 527
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 528
    .line 529
    .line 530
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 531
    .line 532
    int-to-float v8, v8

    .line 533
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 534
    .line 535
    .line 536
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    float-to-int v5, v5

    .line 541
    invoke-static {v5, v5, v10}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    float-to-int v8, v8

    .line 550
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    .line 555
    .line 556
    new-instance v5, Landroid/view/View;

    .line 557
    .line 558
    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 559
    .line 560
    .line 561
    sget v8, Lnet/kaki87/soul2/testing/R$id;->sel_switch_back:I

    .line 562
    .line 563
    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    .line 564
    .line 565
    .line 566
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 567
    .line 568
    sget v13, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 569
    .line 570
    sget v12, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 571
    .line 572
    invoke-direct {v6, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 576
    .line 577
    .line 578
    const/16 v12, 0x15

    .line 579
    .line 580
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    .line 585
    .line 586
    new-instance v6, Lcom/mycompany/app/view/MySwitchView;

    .line 587
    .line 588
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 589
    .line 590
    .line 591
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 592
    .line 593
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 594
    .line 595
    invoke-direct {v13, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 602
    .line 603
    .line 604
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 605
    .line 606
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    .line 611
    .line 612
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 613
    .line 614
    invoke-direct {v12, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 615
    .line 616
    .line 617
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 618
    .line 619
    invoke-virtual {v12, v11, v1, v11, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 623
    .line 624
    .line 625
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 626
    .line 627
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 628
    .line 629
    .line 630
    const/high16 v1, 0x41800000    # 16.0f

    .line 631
    .line 632
    const/4 v9, 0x1

    .line 633
    invoke-virtual {v12, v9, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 634
    .line 635
    .line 636
    const/16 v1, 0x11

    .line 637
    .line 638
    const/4 v9, -0x2

    .line 639
    const/4 v11, -0x1

    .line 640
    invoke-static {v11, v9, v1, v15}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    const/16 v9, 0x10

    .line 645
    .line 646
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 650
    .line 651
    .line 652
    const/high16 v8, 0x41400000    # 12.0f

    .line 653
    .line 654
    invoke-static {v0, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    float-to-int v0, v0

    .line 659
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    .line 664
    .line 665
    new-instance v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 666
    .line 667
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 668
    .line 669
    .line 670
    iput-object v3, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 671
    .line 672
    iput-object v12, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 673
    .line 674
    iput-object v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MySelectView;

    .line 675
    .line 676
    iput-object v7, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 677
    .line 678
    iput-object v5, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->A:Landroid/view/View;

    .line 679
    .line 680
    iput-object v6, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->B:Lcom/mycompany/app/view/MySwitchView;

    .line 681
    .line 682
    return-object v0

    .line 683
    :cond_4
    const/4 v5, 0x5

    .line 684
    if-ne v3, v5, :cond_5

    .line 685
    .line 686
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative;

    .line 687
    .line 688
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 689
    .line 690
    .line 691
    const/high16 v5, 0x42500000    # 52.0f

    .line 692
    .line 693
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    float-to-int v5, v5

    .line 698
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 699
    .line 700
    const/4 v11, -0x1

    .line 701
    invoke-direct {v6, v11, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    .line 706
    .line 707
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 708
    .line 709
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 710
    .line 711
    .line 712
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    float-to-int v4, v4

    .line 717
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 718
    .line 719
    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 720
    .line 721
    .line 722
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 723
    .line 724
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 725
    .line 726
    const/high16 v4, 0x41b00000    # 22.0f

    .line 727
    .line 728
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    float-to-int v4, v4

    .line 733
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    .line 738
    .line 739
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 740
    .line 741
    invoke-direct {v4, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 742
    .line 743
    .line 744
    const/16 v9, 0x10

    .line 745
    .line 746
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 747
    .line 748
    .line 749
    const/4 v9, 0x1

    .line 750
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 751
    .line 752
    .line 753
    const/high16 v1, 0x41800000    # 16.0f

    .line 754
    .line 755
    const/4 v11, -0x1

    .line 756
    invoke-static {v4, v9, v1, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    const/high16 v6, 0x42800000    # 64.0f

    .line 761
    .line 762
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    float-to-int v0, v0

    .line 767
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 768
    .line 769
    .line 770
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 771
    .line 772
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    .line 777
    .line 778
    new-instance v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 779
    .line 780
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 781
    .line 782
    .line 783
    iput-object v3, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 784
    .line 785
    iput-object v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 786
    .line 787
    iput-object v5, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 788
    .line 789
    return-object v0

    .line 790
    :cond_5
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative;

    .line 791
    .line 792
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 793
    .line 794
    .line 795
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 796
    .line 797
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 798
    .line 799
    .line 800
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 801
    .line 802
    invoke-virtual {v3, v4, v11, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 803
    .line 804
    .line 805
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 806
    .line 807
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 808
    .line 809
    .line 810
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 811
    .line 812
    const/4 v5, -0x1

    .line 813
    const/4 v8, -0x2

    .line 814
    invoke-direct {v4, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    .line 819
    .line 820
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 821
    .line 822
    invoke-direct {v4, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 823
    .line 824
    .line 825
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 826
    .line 827
    invoke-virtual {v4, v11, v0, v11, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 831
    .line 832
    .line 833
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 834
    .line 835
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 836
    .line 837
    .line 838
    const/high16 v1, 0x41800000    # 16.0f

    .line 839
    .line 840
    const/4 v9, 0x1

    .line 841
    invoke-virtual {v4, v9, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 842
    .line 843
    .line 844
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 845
    .line 846
    invoke-direct {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    .line 854
    .line 855
    new-instance v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 856
    .line 857
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 858
    .line 859
    .line 860
    iput-object v3, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 861
    .line 862
    iput-object v4, v0, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 863
    .line 864
    return-object v0
.end method

.method public final v(I)Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainSelectAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->m:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->j:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->l:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    return-void
.end method

.method public final x(ILandroid/os/Handler;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 5
    .line 6
    if-ne v0, p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_2
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/mycompany/app/main/MainSelectAdapter$4;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainSelectAdapter$4;-><init>(Lcom/mycompany/app/main/MainSelectAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final y(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
