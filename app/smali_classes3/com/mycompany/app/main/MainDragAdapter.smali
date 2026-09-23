.class public Lcom/mycompany/app/main/MainDragAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;,
        Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;,
        Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/mycompany/app/web/WebViewActivity;

.field public f:Lcom/mycompany/app/fragment/FragmentDragView;

.field public g:Ljava/util/ArrayList;

.field public h:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

.field public i:I


# virtual methods
.method public final a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

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

.method public final c(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDragAdapter;->f:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDragAdapter;->a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/main/MainDragAdapter;->f:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_1
    if-ge v1, v2, :cond_6

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/main/MainDragAdapter;->f:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    instance-of v4, v3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;

    .line 39
    .line 40
    if-nez v4, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    check-cast v3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;

    .line 44
    .line 45
    iget v4, v3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->b:I

    .line 46
    .line 47
    if-ne v4, p1, :cond_5

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_6
    const/4 v3, 0x0

    .line 54
    :goto_3
    if-eqz v3, :cond_7

    .line 55
    .line 56
    iget-object p1, v3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->e:Lcom/mycompany/app/view/MySwitchView;

    .line 57
    .line 58
    if-eqz p1, :cond_7

    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    xor-int/2addr v1, v2

    .line 64
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 65
    .line 66
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 67
    .line 68
    .line 69
    :cond_7
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 70
    .line 71
    return p1
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainDragAdapter;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDragAdapter;->a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDragAdapter;->a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->a:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object p3, p0, Lcom/mycompany/app/main/MainDragAdapter;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyLineFrame;

    .line 11
    .line 12
    invoke-direct {v1, p3}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 18
    .line 19
    .line 20
    const/high16 v2, 0x42500000    # 52.0f

    .line 21
    .line 22
    invoke-static {p3, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    float-to-int v2, v2

    .line 27
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-direct {v3, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const/high16 v5, 0x41a00000    # 20.0f

    .line 42
    .line 43
    invoke-static {p3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    float-to-int v5, v5

    .line 48
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 54
    .line 55
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    .line 57
    const/high16 v5, 0x41b00000    # 22.0f

    .line 58
    .line 59
    invoke-static {p3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    float-to-int v5, v5

    .line 64
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-direct {v5, p3, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .line 74
    .line 75
    const/16 v0, 0x10

    .line 76
    .line 77
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 82
    .line 83
    .line 84
    const/high16 v6, 0x41800000    # 16.0f

    .line 85
    .line 86
    invoke-virtual {v5, v0, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .line 91
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    const/high16 v4, 0x42800000    # 64.0f

    .line 95
    .line 96
    invoke-static {p3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    float-to-int v4, v4

    .line 101
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 102
    .line 103
    .line 104
    const/high16 v4, 0x42c80000    # 100.0f

    .line 105
    .line 106
    invoke-static {p3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    float-to-int v4, v4

    .line 111
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/mycompany/app/view/MySwitchView;

    .line 118
    .line 119
    invoke-direct {v0, p3}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 125
    .line 126
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    const v6, 0x800015

    .line 130
    .line 131
    .line 132
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Landroid/widget/ImageView;

    .line 141
    .line 142
    invoke-direct {v4, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 146
    .line 147
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    .line 149
    .line 150
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .line 152
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 153
    .line 154
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .line 156
    .line 157
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    .line 159
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    new-instance v7, Landroid/view/View;

    .line 168
    .line 169
    invoke-direct {v7, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    sget p3, Lnet/kaki87/soul2/testing/R$id;->item_drag:I

    .line 173
    .line 174
    invoke-virtual {v7, p3}, Landroid/view/View;->setId(I)V

    .line 175
    .line 176
    .line 177
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    invoke-direct {p3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    iput v6, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    .line 184
    invoke-virtual {v1, v7, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    new-instance p3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;

    .line 188
    .line 189
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v1, p3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->a:Lcom/mycompany/app/view/MyLineFrame;

    .line 193
    .line 194
    iput-object v3, p3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 195
    .line 196
    iput-object v5, p3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    iput-object v0, p3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->e:Lcom/mycompany/app/view/MySwitchView;

    .line 199
    .line 200
    iput-object v4, p3, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    .line 201
    .line 202
    move-object v0, p3

    .line 203
    :goto_0
    if-nez v0, :cond_1

    .line 204
    .line 205
    return-object p2

    .line 206
    :cond_1
    iget-object p2, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->a:Lcom/mycompany/app/view/MyLineFrame;

    .line 207
    .line 208
    if-nez p2, :cond_2

    .line 209
    .line 210
    return-object p2

    .line 211
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    move-object v0, p3

    .line 220
    check-cast v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;

    .line 221
    .line 222
    if-nez v0, :cond_4

    .line 223
    .line 224
    return-object p2

    .line 225
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDragAdapter;->a(I)Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    if-nez p3, :cond_5

    .line 230
    .line 231
    return-object p2

    .line 232
    :cond_5
    iput p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->b:I

    .line 233
    .line 234
    iget p1, p3, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->b:I

    .line 235
    .line 236
    const/16 v1, 0x8

    .line 237
    .line 238
    const/4 v2, 0x0

    .line 239
    if-lez p1, :cond_6

    .line 240
    .line 241
    iget-object v3, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 242
    .line 243
    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 247
    .line 248
    const/high16 v3, 0x3f800000    # 1.0f

    .line 249
    .line 250
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 251
    .line 252
    .line 253
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 254
    .line 255
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :goto_2
    iget p1, p3, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->c:I

    .line 265
    .line 266
    if-lez p1, :cond_7

    .line 267
    .line 268
    iget-object v1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    .line 270
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    .line 272
    .line 273
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 274
    .line 275
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_7
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    :goto_3
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->e:Lcom/mycompany/app/view/MySwitchView;

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->e:Lcom/mycompany/app/view/MySwitchView;

    .line 290
    .line 291
    iget-boolean p3, p3, Lcom/mycompany/app/main/MainDragAdapter$MainDragItem;->d:Z

    .line 292
    .line 293
    invoke-virtual {p1, p3, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 294
    .line 295
    .line 296
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->e:Lcom/mycompany/app/view/MySwitchView;

    .line 297
    .line 298
    new-instance p3, Lcom/mycompany/app/main/MainDragAdapter$1;

    .line 299
    .line 300
    invoke-direct {p3, p0}, Lcom/mycompany/app/main/MainDragAdapter$1;-><init>(Lcom/mycompany/app/main/MainDragAdapter;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 307
    .line 308
    if-eqz p1, :cond_8

    .line 309
    .line 310
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 311
    .line 312
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 313
    .line 314
    .line 315
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 316
    .line 317
    const p3, -0x50506

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    .line 322
    .line 323
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    .line 324
    .line 325
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->outline_height_dark_24:I

    .line 326
    .line 327
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    .line 329
    .line 330
    return-object p2

    .line 331
    :cond_8
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 332
    .line 333
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 334
    .line 335
    .line 336
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    const/high16 p3, -0x1000000

    .line 339
    .line 340
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    .line 342
    .line 343
    iget-object p1, v0, Lcom/mycompany/app/main/MainDragAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    .line 344
    .line 345
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->outline_height_black_24:I

    .line 346
    .line 347
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    .line 349
    .line 350
    return-object p2
.end method
