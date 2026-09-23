.class public Lcom/mycompany/app/image/ImageListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;,
        Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;

.field public e:Lcom/mycompany/app/image/ImageViewActivity;

.field public f:Landroid/content/Context;

.field public g:Landroid/view/ViewGroup;

.field public h:Lcom/mycompany/app/compress/Compress;

.field public final i:I

.field public j:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public k:Ljava/util/ArrayList;

.field public l:Z

.field public m:Z

.field public n:I

.field public final o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/util/ArrayList;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewActivity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mycompany/app/compress/Compress;ILcom/nostra13/universalimageloader/core/DisplayImageOptions;ZZIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter;->e:Lcom/mycompany/app/image/ImageViewActivity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/mycompany/app/image/ImageListAdapter;->g:Landroid/view/ViewGroup;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 18
    .line 19
    iput p5, p0, Lcom/mycompany/app/image/ImageListAdapter;->i:I

    .line 20
    .line 21
    iput-object p6, p0, Lcom/mycompany/app/image/ImageListAdapter;->j:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 22
    .line 23
    iput-boolean p7, p0, Lcom/mycompany/app/image/ImageListAdapter;->l:Z

    .line 24
    .line 25
    iput-boolean p8, p0, Lcom/mycompany/app/image/ImageListAdapter;->m:Z

    .line 26
    .line 27
    iput p9, p0, Lcom/mycompany/app/image/ImageListAdapter;->n:I

    .line 28
    .line 29
    iput-boolean p10, p0, Lcom/mycompany/app/image/ImageListAdapter;->o:Z

    .line 30
    .line 31
    return-void
.end method

.method public static v(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageListAdapter;->A(Z)V

    .line 10
    .line 11
    .line 12
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageListAdapter;->y(I)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageListAdapter;->y(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static w(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageListAdapter;->z(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageListAdapter;->B()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->g:Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    new-instance v1, Lcom/mycompany/app/image/ImageListAdapter$3;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/image/ImageListAdapter$3;-><init>(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 p0, 0xc8

    .line 50
    .line 51
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    return-void
.end method

.method public static x(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz p1, :cond_6

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 9
    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 28
    .line 29
    iget-object p0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    :goto_0
    iget-boolean p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 36
    .line 37
    if-nez p2, :cond_6

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 40
    .line 41
    if-nez p2, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageListAdapter;->C(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_5
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    invoke-virtual {p2, v0, p0}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->d:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;->b()Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez p1, :cond_c

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    move v4, v3

    .line 39
    move v5, v4

    .line 40
    move v6, v5

    .line 41
    :goto_0
    if-ge v4, p1, :cond_8

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-nez v7, :cond_2

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 55
    .line 56
    if-nez v7, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v9, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    move v10, v3

    .line 71
    :cond_4
    :goto_1
    if-ge v10, v9, :cond_6

    .line 72
    .line 73
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    add-int/lit8 v10, v10, 0x1

    .line 78
    .line 79
    check-cast v11, Landroid/widget/ImageView;

    .line 80
    .line 81
    if-nez v11, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    iget v12, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 85
    .line 86
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    check-cast v13, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-ne v12, v13, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_6
    move-object v11, v2

    .line 103
    :goto_2
    if-eqz v11, :cond_7

    .line 104
    .line 105
    iget-object v8, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V

    .line 115
    .line 116
    .line 117
    iget-object v8, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v8, :cond_7

    .line 124
    .line 125
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    return-void

    .line 127
    :cond_7
    :try_start_2
    iget v8, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 128
    .line 129
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    iget v7, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 134
    .line 135
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 143
    .line 144
    add-int/lit8 v6, v6, 0x1

    .line 145
    .line 146
    new-instance p1, Ljava/util/ArrayList;

    .line 147
    .line 148
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    :cond_9
    :goto_4
    if-ge v3, v1, :cond_f

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    check-cast v2, Landroid/widget/ImageView;

    .line 166
    .line 167
    if-nez v2, :cond_a

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-lt v4, v5, :cond_b

    .line 181
    .line 182
    if-le v4, v6, :cond_9

    .line 183
    .line 184
    :cond_b
    iget-object v4, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v4, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_c
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    :goto_6
    if-ge v3, v1, :cond_e

    .line 209
    .line 210
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    check-cast v4, Landroid/widget/ImageView;

    .line 217
    .line 218
    if-nez v4, :cond_d

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_d
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v5, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a(Landroid/widget/ImageView;)V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_e
    iput-object v2, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    :try_start_3
    monitor-exit v0

    .line 232
    return-void

    .line 233
    :catch_0
    :cond_f
    monitor-exit v0

    .line 234
    goto :goto_8

    .line 235
    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    throw p1

    .line 237
    :cond_10
    :goto_8
    return-void
.end method

.method public final B()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public final C(Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->s:I

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageListAdapter;->A(Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mycompany/app/image/ImageListAdapter;->j:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 36
    .line 37
    new-instance v3, Lcom/mycompany/app/image/ImageListAdapter$1;

    .line 38
    .line 39
    invoke-direct {v3, p0}, Lcom/mycompany/app/image/ImageListAdapter$1;-><init>(Lcom/mycompany/app/image/ImageListAdapter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const v0, 0x186a0

    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1
    check-cast p1, Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_1e

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_d

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageListAdapter;->B()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->o:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    if-gez p2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v4, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    rem-int v4, p2, v0

    .line 33
    .line 34
    :goto_0
    sget-boolean v5, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    sub-int/2addr v0, v4

    .line 41
    add-int/lit8 v4, v0, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v3

    .line 45
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->p:Z

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->t:I

    .line 50
    .line 51
    if-lt p2, v0, :cond_4

    .line 52
    .line 53
    iget v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->u:I

    .line 54
    .line 55
    if-le p2, v0, :cond_5

    .line 56
    .line 57
    :cond_4
    move v0, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    move v0, v3

    .line 60
    :goto_2
    new-instance v5, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v6, 0x8

    .line 66
    .line 67
    iput v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 68
    .line 69
    iget-object v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 70
    .line 71
    iput-object v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 72
    .line 73
    iget-object v7, v6, Lcom/mycompany/app/compress/Compress;->c:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v7, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 76
    .line 77
    iput v4, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 78
    .line 79
    invoke-virtual {v6, v4}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iput-object v4, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 84
    .line 85
    iput-boolean v0, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 86
    .line 87
    iput-boolean v0, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 88
    .line 89
    xor-int/lit8 v4, v0, 0x1

    .line 90
    .line 91
    iput-boolean v4, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 92
    .line 93
    iget-object v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->e:Lcom/mycompany/app/image/ImageViewActivity;

    .line 94
    .line 95
    if-nez v6, :cond_6

    .line 96
    .line 97
    iget-object v7, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v6}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    :goto_3
    const/4 v8, 0x2

    .line 109
    iget v9, p0, Lcom/mycompany/app/image/ImageListAdapter;->i:I

    .line 110
    .line 111
    if-ne v9, v8, :cond_7

    .line 112
    .line 113
    move v10, v2

    .line 114
    goto :goto_4

    .line 115
    :cond_7
    move v10, v3

    .line 116
    :goto_4
    invoke-static {v6, v7, v10}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    iput v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 121
    .line 122
    const/16 v6, 0xc

    .line 123
    .line 124
    if-ne v9, v6, :cond_8

    .line 125
    .line 126
    move v6, v2

    .line 127
    goto :goto_5

    .line 128
    :cond_8
    move v6, v3

    .line 129
    :goto_5
    iput-boolean v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 130
    .line 131
    iget-object p1, p1, Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyImageView;

    .line 132
    .line 133
    iput-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 134
    .line 135
    iget-object v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->g:Landroid/view/ViewGroup;

    .line 136
    .line 137
    invoke-virtual {p1, v6}, Lcom/mycompany/app/view/MyImageView;->setParentView(Landroid/view/ViewGroup;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 141
    .line 142
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyImageView;->setPreProcess(Z)V

    .line 143
    .line 144
    .line 145
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 146
    .line 147
    iget-boolean v4, p0, Lcom/mycompany/app/image/ImageListAdapter;->l:Z

    .line 148
    .line 149
    iget-boolean v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->m:Z

    .line 150
    .line 151
    iget v7, p0, Lcom/mycompany/app/image/ImageListAdapter;->n:I

    .line 152
    .line 153
    sget-boolean v10, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 154
    .line 155
    iput-boolean v4, p1, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 156
    .line 157
    iput-boolean v6, p1, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 158
    .line 159
    iput v7, p1, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 160
    .line 161
    iput-boolean v10, p1, Lcom/mycompany/app/view/MyImageView;->l:Z

    .line 162
    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    .line 166
    .line 167
    if-eqz v0, :cond_1c

    .line 168
    .line 169
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 170
    .line 171
    iput-boolean v2, p1, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 172
    .line 173
    invoke-virtual {p1, v3, v3}, Lcom/mycompany/app/view/MyImageView;->a(II)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 177
    .line 178
    if-eqz p1, :cond_9

    .line 179
    .line 180
    invoke-interface {p1}, Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;->d()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    goto :goto_6

    .line 185
    :cond_9
    move-object p1, v4

    .line 186
    :goto_6
    iget-object v0, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 187
    .line 188
    iget v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->u:I

    .line 189
    .line 190
    if-le p2, v6, :cond_a

    .line 191
    .line 192
    move v3, v2

    .line 193
    :cond_a
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 194
    .line 195
    if-nez p2, :cond_b

    .line 196
    .line 197
    goto/16 :goto_a

    .line 198
    .line 199
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_c

    .line 204
    .line 205
    goto/16 :goto_a

    .line 206
    .line 207
    :cond_c
    const/4 p2, 0x3

    .line 208
    if-ne v9, v2, :cond_d

    .line 209
    .line 210
    iget-object v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 211
    .line 212
    invoke-static {v6}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    iget-object v6, v6, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_d
    if-ne v9, v8, :cond_e

    .line 220
    .line 221
    iget-object v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {v6}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    iget-object v6, v6, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_e
    if-ne v9, p2, :cond_f

    .line 231
    .line 232
    iget-object v6, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 233
    .line 234
    invoke-static {v6}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    iget-object v6, v6, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_f
    move-object v6, v4

    .line 242
    :goto_7
    if-eqz v6, :cond_1b

    .line 243
    .line 244
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-ge v7, v8, :cond_10

    .line 249
    .line 250
    goto/16 :goto_a

    .line 251
    .line 252
    :cond_10
    iget-object v7, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 253
    .line 254
    invoke-interface {v7}, Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;->c()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    const/4 v10, -0x1

    .line 259
    if-eq v7, v10, :cond_11

    .line 260
    .line 261
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    if-ge v7, v11, :cond_11

    .line 266
    .line 267
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    if-nez v11, :cond_12

    .line 276
    .line 277
    :cond_11
    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-ne v7, v10, :cond_12

    .line 282
    .line 283
    goto/16 :goto_a

    .line 284
    .line 285
    :cond_12
    if-eqz v3, :cond_14

    .line 286
    .line 287
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 288
    .line 289
    if-eqz p1, :cond_13

    .line 290
    .line 291
    if-nez v1, :cond_13

    .line 292
    .line 293
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    add-int/2addr p1, v7

    .line 298
    sub-int/2addr p1, v2

    .line 299
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    rem-int/2addr p1, v1

    .line 304
    goto :goto_8

    .line 305
    :cond_13
    add-int/2addr v7, v2

    .line 306
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    rem-int p1, v7, p1

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_14
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 314
    .line 315
    if-eqz p1, :cond_15

    .line 316
    .line 317
    if-nez v1, :cond_15

    .line 318
    .line 319
    add-int/2addr v7, v2

    .line 320
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    rem-int p1, v7, p1

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    add-int/2addr p1, v7

    .line 332
    sub-int/2addr p1, v2

    .line 333
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    rem-int/2addr p1, v1

    .line 338
    :goto_8
    if-ne v9, v2, :cond_16

    .line 339
    .line 340
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 341
    .line 342
    invoke-static {p2}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-virtual {p2, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    goto :goto_9

    .line 351
    :cond_16
    if-ne v9, v8, :cond_17

    .line 352
    .line 353
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 354
    .line 355
    invoke-static {p2}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-virtual {p2, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    goto :goto_9

    .line 364
    :cond_17
    if-ne v9, p2, :cond_18

    .line 365
    .line 366
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 367
    .line 368
    invoke-static {p2}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {p2, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    :cond_18
    :goto_9
    if-eqz v4, :cond_19

    .line 377
    .line 378
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_19
    if-ne v9, v2, :cond_1a

    .line 382
    .line 383
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 384
    .line 385
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    goto :goto_a

    .line 396
    :cond_1a
    iget-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 397
    .line 398
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Ljava/lang/String;

    .line 403
    .line 404
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    :cond_1b
    :goto_a
    invoke-virtual {v0, v8, v4}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_1c
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 413
    .line 414
    if-eqz p1, :cond_1d

    .line 415
    .line 416
    iget-object p2, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 417
    .line 418
    iget v0, p1, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 419
    .line 420
    iget p1, p1, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 421
    .line 422
    iput-boolean v2, p2, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 423
    .line 424
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/view/MyImageView;->a(II)V

    .line 425
    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_1d
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 429
    .line 430
    iput-boolean v2, p1, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 431
    .line 432
    invoke-virtual {p1, v3, v3}, Lcom/mycompany/app/view/MyImageView;->a(II)V

    .line 433
    .line 434
    .line 435
    :goto_b
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 436
    .line 437
    invoke-virtual {p1, v3, v4}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :goto_c
    iget-object p1, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 441
    .line 442
    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v5}, Lcom/mycompany/app/image/ImageListAdapter;->C(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 446
    .line 447
    .line 448
    :cond_1e
    :goto_d
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    return-object p1

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyImageView;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->o:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    :goto_0
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyImageView;->b(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p1, Lcom/mycompany/app/image/ImageListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyImageView;

    .line 39
    .line 40
    return-object p1
.end method

.method public final y(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->s:I

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->v:Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;->b()Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageListAdapter;->p:Z

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    if-ltz p1, :cond_13

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageListAdapter;->B()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-lt p1, v2, :cond_5

    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_3
    if-gez p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageListAdapter;->B()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-int/2addr p1, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageListAdapter;->B()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-lt p1, v2, :cond_5

    .line 66
    .line 67
    move p1, v3

    .line 68
    :cond_5
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move v5, v3

    .line 73
    :goto_1
    if-ge v5, v2, :cond_9

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    if-nez v6, :cond_6

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 87
    .line 88
    if-nez v6, :cond_7

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_7
    iget v6, v6, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 92
    .line 93
    if-ne p1, v6, :cond_8

    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 101
    .line 102
    if-eqz v1, :cond_d

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_d

    .line 109
    .line 110
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->d:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v5, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    move v6, v3

    .line 125
    :cond_a
    :goto_3
    if-ge v6, v5, :cond_c

    .line 126
    .line 127
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    check-cast v7, Landroid/widget/ImageView;

    .line 134
    .line 135
    if-nez v7, :cond_b

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-ne p1, v7, :cond_a

    .line 149
    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception p1

    .line 153
    goto :goto_4

    .line 154
    :cond_c
    monitor-exit v1

    .line 155
    goto :goto_5

    .line 156
    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :cond_d
    :goto_5
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    const/16 v2, 0x8

    .line 164
    .line 165
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 166
    .line 167
    iput-object v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/mycompany/app/compress/Compress;->c:Ljava/lang/String;

    .line 170
    .line 171
    iput-object v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 172
    .line 173
    iput p1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 174
    .line 175
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->e:Lcom/mycompany/app/image/ImageViewActivity;

    .line 176
    .line 177
    if-nez v0, :cond_e

    .line 178
    .line 179
    iget-object v2, p0, Lcom/mycompany/app/image/ImageListAdapter;->f:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    goto :goto_6

    .line 186
    :cond_e
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    :goto_6
    iget v5, p0, Lcom/mycompany/app/image/ImageListAdapter;->i:I

    .line 191
    .line 192
    const/4 v6, 0x2

    .line 193
    if-ne v5, v6, :cond_f

    .line 194
    .line 195
    move v5, v4

    .line 196
    goto :goto_7

    .line 197
    :cond_f
    move v5, v3

    .line 198
    :goto_7
    invoke-static {v0, v2, v5}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iput v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 203
    .line 204
    iget v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->i:I

    .line 205
    .line 206
    const/16 v2, 0xc

    .line 207
    .line 208
    if-ne v0, v2, :cond_10

    .line 209
    .line 210
    move v3, v4

    .line 211
    :cond_10
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 212
    .line 213
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->e:Lcom/mycompany/app/image/ImageViewActivity;

    .line 214
    .line 215
    if-nez v0, :cond_11

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_11
    new-instance v0, Landroid/widget/ImageView;

    .line 219
    .line 220
    iget-object v2, p0, Lcom/mycompany/app/image/ImageListAdapter;->e:Lcom/mycompany/app/image/ImageViewActivity;

    .line 221
    .line 222
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 233
    .line 234
    if-nez p1, :cond_12

    .line 235
    .line 236
    new-instance p1, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 242
    .line 243
    :cond_12
    iget-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter;->k:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iget-object v2, p0, Lcom/mycompany/app/image/ImageListAdapter;->j:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 253
    .line 254
    new-instance v3, Lcom/mycompany/app/image/ImageListAdapter$2;

    .line 255
    .line 256
    invoke-direct {v3, p0}, Lcom/mycompany/app/image/ImageListAdapter$2;-><init>(Lcom/mycompany/app/image/ImageListAdapter;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 260
    .line 261
    .line 262
    :catch_0
    :cond_13
    :goto_8
    return-void
.end method

.method public final z(Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter;->d:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageListAdapter;->B()I

    .line 34
    .line 35
    .line 36
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    return-void

    .line 41
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 42
    .line 43
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    return-void

    .line 57
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    .line 61
    .line 62
    :catch_0
    :try_start_5
    monitor-exit v0

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    throw p1

    .line 66
    :cond_4
    :goto_2
    return-void
.end method
