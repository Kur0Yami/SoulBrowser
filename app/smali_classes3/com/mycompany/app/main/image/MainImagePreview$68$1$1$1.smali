.class Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$68$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->y2:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->y2:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v3}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->d()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i()Landroid/graphics/Matrix;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 37
    .line 38
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v5, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 54
    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    mul-int/lit8 v6, v4, 0x2

    .line 63
    .line 64
    sub-int/2addr v5, v6

    .line 65
    iget-object v6, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    mul-int/lit8 v7, v3, 0x2

    .line 72
    .line 73
    sub-int/2addr v6, v7

    .line 74
    :try_start_0
    invoke-static {v2, v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 79
    .line 80
    .line 81
    move-result v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    move-object v2, v3

    .line 85
    :catch_0
    :cond_4
    :goto_0
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->h2:Landroid/graphics/Bitmap;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1$1;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method
