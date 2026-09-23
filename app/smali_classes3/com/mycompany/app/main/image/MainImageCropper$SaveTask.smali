.class Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/image/MainImageCropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Landroid/graphics/Bitmap;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageCropper;Ljava/lang/String;Landroid/graphics/Bitmap;)V
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
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/main/image/MainImageCropper;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p1, Lcom/mycompany/app/main/image/MainImageCropper;->x1:Z

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

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
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iput-object p3, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/crop/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/image/MainImageCropper;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->o1:Z

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->m1:I

    .line 35
    .line 36
    if-le v1, v2, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    iget v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->n1:I

    .line 41
    .line 42
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 68
    .line 69
    :goto_1
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->f:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v2, v4, v3}, Lcom/mycompany/app/main/MainUtil;->q(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->l1:Z

    .line 78
    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v2, v4, v3}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-static {v0, v4, v3, v2}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    .line 97
    .line 98
    .line 99
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->h:Z

    .line 100
    .line 101
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/image/MainImageCropper;

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
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->x1:Z

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

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
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/image/MainImageCropper;

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
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->x1:Z

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

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
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->h:Z

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save_fail:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->l1:Z

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;->f:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v1, :cond_5

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->p1:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_4
    new-instance v3, Lcom/mycompany/app/main/image/MainImageCropper$12;

    .line 48
    .line 49
    invoke-direct {v3, v0, v2}, Lcom/mycompany/app/main/image/MainImageCropper$12;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "EXTRA_PATH"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const/4 v2, -0x1

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageCropper;->finish()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
