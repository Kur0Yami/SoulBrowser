.class Lcom/mycompany/app/image/ImageViewPageScroll$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public final synthetic f:Landroid/graphics/Bitmap;

.field public final synthetic g:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$26;->g:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$26;->c:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/image/ImageViewPageScroll$26;->f:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$26;->g:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$26;->c:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->R0()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyImageView;->setFadeIn(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$26;->f:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v7, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 32
    .line 33
    invoke-virtual {v7, v6, v5}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    iput-boolean v4, v5, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 47
    .line 48
    invoke-virtual {v5, v7, v8}, Lcom/mycompany/app/view/MyImageView;->a(II)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v7, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 58
    .line 59
    invoke-virtual {v7, v4, v5}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 63
    .line 64
    iget v7, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 65
    .line 66
    if-eq v5, v7, :cond_2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    iget v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 70
    .line 71
    iput v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 72
    .line 73
    iget v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 74
    .line 75
    iput v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->e0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 78
    .line 79
    .line 80
    iget-object v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 81
    .line 82
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->i1(Lcom/mycompany/app/view/MyImageView;Z)V

    .line 83
    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    if-eq v3, v4, :cond_3

    .line 91
    .line 92
    const/4 v4, 0x4

    .line 93
    if-ne v3, v4, :cond_4

    .line 94
    .line 95
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 96
    .line 97
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    mul-int/lit8 v3, v3, 0x2

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 129
    .line 130
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-nez v2, :cond_6

    .line 137
    .line 138
    new-instance v2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 139
    .line 140
    iget v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->T:I

    .line 141
    .line 142
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->U:I

    .line 143
    .line 144
    invoke-direct {v2, v3, v4, v6}, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;-><init>(III)V

    .line 145
    .line 146
    .line 147
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 148
    .line 149
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 150
    .line 151
    invoke-virtual {v3, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1, v2}, Lcom/mycompany/app/compress/Compress;->P(Ljava/lang/String;Lcom/mycompany/app/compress/CompressCache$BitmapInfo;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    invoke-virtual {v0, v6, v6}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 160
    .line 161
    .line 162
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->R:Lcom/mycompany/app/image/ImageCoverView;

    .line 163
    .line 164
    if-eqz v0, :cond_7

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageCoverView;->c()V

    .line 167
    .line 168
    .line 169
    :cond_7
    :goto_3
    return-void
.end method
