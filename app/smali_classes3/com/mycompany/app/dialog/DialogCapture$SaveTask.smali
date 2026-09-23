.class Lcom/mycompany/app/dialog/DialogCapture$SaveTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Landroid/graphics/Bitmap;

.field public final h:I

.field public final i:Landroid/graphics/RectF;

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogCapture;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogCapture;->R:Z

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->P:Lcom/mycompany/app/view/MyCoverView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogCapture;->y:Z

    .line 33
    .line 34
    if-eqz p2, :cond_4

    .line 35
    .line 36
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->h:I

    .line 48
    .line 49
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->d()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i()Landroid/graphics/Matrix;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->i:Landroid/graphics/RectF;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 81
    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    :goto_0
    return-void

    .line 85
    :cond_6
    invoke-virtual {p1}, Lcom/mycompany/app/crop/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogCapture;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->i:Landroid/graphics/RectF;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    cmpl-float v3, v3, v4

    .line 24
    .line 25
    if-lez v3, :cond_5

    .line 26
    .line 27
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->A:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->A:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 46
    .line 47
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 48
    .line 49
    sub-float/2addr v6, v1

    .line 50
    neg-float v1, v1

    .line 51
    sub-float v7, v6, v1

    .line 52
    .line 53
    iget v8, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->h:I

    .line 54
    .line 55
    int-to-float v8, v8

    .line 56
    sub-float/2addr v7, v8

    .line 57
    int-to-float v8, v5

    .line 58
    div-float/2addr v6, v8

    .line 59
    div-float/2addr v1, v6

    .line 60
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    div-float/2addr v7, v6

    .line 65
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-gtz v1, :cond_2

    .line 70
    .line 71
    if-lez v6, :cond_3

    .line 72
    .line 73
    :cond_2
    if-ltz v1, :cond_3

    .line 74
    .line 75
    sub-int/2addr v5, v1

    .line 76
    sub-int/2addr v5, v6

    .line 77
    if-lez v5, :cond_3

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    :try_start_0
    invoke-static {v3, v6, v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 81
    .line 82
    .line 83
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    :cond_3
    move-object v1, v2

    .line 86
    :goto_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 102
    .line 103
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_6

    .line 110
    .line 111
    :goto_2
    return-void

    .line 112
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_7

    .line 121
    .line 122
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 126
    .line 127
    :goto_3
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->f:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v1, v3, v5, v4}, Lcom/mycompany/app/main/MainUtil;->q(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v3, v5, v4}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_8

    .line 146
    .line 147
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {v0, v5, v2, v3}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    .line 150
    .line 151
    .line 152
    :cond_8
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->j:Z

    .line 153
    .line 154
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogCapture;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->R:Z

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->P:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogCapture;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->R:Z

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->P:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->j:Z

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture$SaveTask;->f:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v2, :cond_4

    .line 37
    .line 38
    :goto_1
    return-void

    .line 39
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogCapture$17;

    .line 40
    .line 41
    invoke-direct {v3, v0, v1}, Lcom/mycompany/app/dialog/DialogCapture$17;-><init>(Lcom/mycompany/app/dialog/DialogCapture;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
