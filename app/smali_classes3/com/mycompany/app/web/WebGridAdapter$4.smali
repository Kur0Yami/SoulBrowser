.class Lcom/mycompany/app/web/WebGridAdapter$4;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter$4;->a:Lcom/mycompany/app/web/WebGridAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter$4;->a:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->d:Landroid/content/Context;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    :goto_0
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_2
    iget v3, v0, Lcom/mycompany/app/web/WebGridAdapter;->r:I

    .line 32
    .line 33
    if-nez v3, :cond_8

    .line 34
    .line 35
    iget-object v3, v0, Lcom/mycompany/app/web/WebGridAdapter;->n:[Z

    .line 36
    .line 37
    if-eqz v3, :cond_c

    .line 38
    .line 39
    array-length v4, v3

    .line 40
    if-lt p1, v4, :cond_3

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_3
    aget-boolean v4, v3, p1

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    aput-boolean v5, v3, p1

    .line 50
    .line 51
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_4

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_4

    .line 66
    .line 67
    iget-object p2, v0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, v2, v3}, Lcom/mycompany/app/data/DataUrl;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    iget-object v3, v0, Lcom/mycompany/app/web/WebGridAdapter;->o:[Z

    .line 84
    .line 85
    if-eqz v3, :cond_c

    .line 86
    .line 87
    array-length v4, v3

    .line 88
    if-lt p1, v4, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    aget-boolean v4, v3, p1

    .line 92
    .line 93
    if-nez v4, :cond_6

    .line 94
    .line 95
    aput-boolean v5, v3, p1

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    if-eqz p3, :cond_9

    .line 102
    .line 103
    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 104
    .line 105
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 106
    .line 107
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_7

    .line 112
    .line 113
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 114
    .line 115
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_9

    .line 120
    .line 121
    :cond_7
    invoke-static {v2, v5, v5}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-nez p3, :cond_9

    .line 126
    .line 127
    iget-object p3, v0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 128
    .line 129
    const-string v0, ""

    .line 130
    .line 131
    invoke-interface {p3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p3, v2, v0}, Lcom/mycompany/app/data/DataUrl;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_8
    iget-object p3, v0, Lcom/mycompany/app/web/WebGridAdapter;->q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

    .line 143
    .line 144
    if-eqz p3, :cond_9

    .line 145
    .line 146
    invoke-interface {p3, p1}, Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;->a(I)V

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_1
    invoke-static {p2}, Lcom/mycompany/app/web/WebGridAdapter;->z(Landroid/view/View;)Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-nez p2, :cond_a

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eq p1, p3, :cond_b

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_b
    iget-object p1, p2, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 164
    .line 165
    if-nez p1, :cond_d

    .line 166
    .line 167
    :cond_c
    :goto_2
    return-void

    .line 168
    :cond_d
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 169
    .line 170
    if-eqz p2, :cond_e

    .line 171
    .line 172
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_e
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_web_24:I

    .line 176
    .line 177
    :goto_3
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 5
    .line 6
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-static {}, Lcom/mycompany/app/compress/CompressCache;->a()Lcom/mycompany/app/compress/CompressCache;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v4, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-direct {v4, v5, v6, v2}, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;-><init>(III)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    iget-object v3, v3, Lcom/mycompany/app/compress/CompressCache;->a:Landroidx/collection/LruCache;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, p1, v4}, Landroidx/collection/LruCache;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter$4;->a:Lcom/mycompany/app/web/WebGridAdapter;

    .line 49
    .line 50
    iget-object v3, p1, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    if-ltz v0, :cond_4

    .line 55
    .line 56
    array-length v3, v3

    .line 57
    if-ge v0, v3, :cond_4

    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v5, 0x1

    .line 68
    if-le v3, v4, :cond_2

    .line 69
    .line 70
    move v3, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v3, v2

    .line 73
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    const/4 v5, 0x2

    .line 78
    :cond_3
    aput v5, p1, v0

    .line 79
    .line 80
    :cond_4
    invoke-static {p2}, Lcom/mycompany/app/web/WebGridAdapter;->z(Landroid/view/View;)Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eq v0, p2, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 95
    .line 96
    if-nez p2, :cond_7

    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :cond_7
    if-eqz v1, :cond_9

    .line 100
    .line 101
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_8

    .line 106
    .line 107
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const v2, -0x70708

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0, v1, v2}, Lcom/mycompany/app/view/MyThumbView;->j(III)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_8
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 125
    .line 126
    invoke-virtual {p2, v2, v2, v2}, Lcom/mycompany/app/view/MyThumbView;->j(III)V

    .line 127
    .line 128
    .line 129
    :goto_2
    iget-object p1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 130
    .line 131
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_9
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 136
    .line 137
    if-eqz p1, :cond_a

    .line 138
    .line 139
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_a
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_web_24:I

    .line 143
    .line 144
    :goto_3
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
