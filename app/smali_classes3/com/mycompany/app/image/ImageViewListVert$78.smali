.class Lcom/mycompany/app/image/ImageViewListVert$78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListVert;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$78;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$78;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->j1:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v5, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 30
    .line 31
    invoke-virtual {v5, v3}, Lcom/mycompany/app/compress/Compress;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-virtual {v7, v3, v5, v8}, Lcom/mycompany/app/compress/Compress;->Q(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->e0()Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 54
    .line 55
    invoke-virtual {v6, v3, v5, v4}, Lcom/mycompany/app/compress/Compress;->Q(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    move-object v3, v7

    .line 59
    :goto_0
    invoke-static {v2}, Lcom/mycompany/app/ocr/OcrDetector;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    invoke-static {v5}, Lcom/mycompany/app/compress/Compress;->q(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-static {v0, v2, v5, v4}, Lcom/mycompany/app/image/ImageViewListVert;->T(Lcom/mycompany/app/image/ImageViewListVert;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->k1:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->l1:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    iput-object v5, v0, Lcom/mycompany/app/image/ImageViewListVert;->m1:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    :cond_5
    new-instance v1, Lcom/mycompany/app/image/ImageViewListVert$78$1;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewListVert$78$1;-><init>(Lcom/mycompany/app/image/ImageViewListVert$78;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method
