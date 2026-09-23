.class public Lcom/mycompany/app/main/image/MainImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/image/MainImageView$MainImageListener;,
        Lcom/mycompany/app/main/image/MainImageView$ZoomItem;
    }
.end annotation


# static fields
.field public static final synthetic S:I


# instance fields
.field public A:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

.field public B:Landroid/graphics/Bitmap;

.field public C:Landroid/graphics/Bitmap;

.field public D:Landroid/graphics/Matrix;

.field public E:Landroid/animation/ValueAnimator;

.field public F:Z

.field public G:I

.field public H:I

.field public I:Landroid/graphics/RectF;

.field public J:Landroid/graphics/Bitmap;

.field public final K:Lcom/mycompany/app/view/MyGlideTarget;

.field public L:Landroid/graphics/drawable/PictureDrawable;

.field public final M:Lcom/mycompany/app/view/MyGlideTarget;

.field public N:Landroid/graphics/Bitmap;

.field public O:Landroid/graphics/Bitmap;

.field public P:F

.field public Q:Z

.field public final R:Ljava/lang/Runnable;

.field public c:Lcom/mycompany/app/main/MainActivity;

.field public f:Landroid/content/Context;

.field public g:Landroid/os/Handler;

.field public h:Lcom/mycompany/app/main/image/MainImageView$MainImageListener;

.field public i:Z

.field public j:I

.field public k:Lcom/mycompany/app/view/MyFadeFrame;

.field public l:Lcom/mycompany/app/view/MyAreaView;

.field public m:Z

.field public n:Lcom/mycompany/app/view/GlideRequests;

.field public o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public p:Z

.field public q:Lcom/mycompany/app/view/MyProgressDrawable;

.field public r:Landroid/graphics/Paint;

.field public s:F

.field public t:I

.field public u:I

.field public v:F

.field public w:F

.field public x:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

.field public y:Z

.field public z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/image/MainImageView$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageView$3;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->K:Lcom/mycompany/app/view/MyGlideTarget;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/main/image/MainImageView$4;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageView$4;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->M:Lcom/mycompany/app/view/MyGlideTarget;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/main/image/MainImageView$14;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageView$14;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->R:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method

.method public static a(Lcom/mycompany/app/main/image/MainImageView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->a:Landroid/net/Uri;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_2
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->p()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x7

    .line 39
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 40
    .line 41
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 47
    .line 48
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 55
    .line 56
    iput-boolean v2, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 57
    .line 58
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 64
    .line 65
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v3, Lcom/mycompany/app/main/image/MainImageView$5;

    .line 75
    .line 76
    invoke-direct {v3, p0}, Lcom/mycompany/app/main/image/MainImageView$5;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->i(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/main/image/MainImageView;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setAreaRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/main/image/MainImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setImageLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/main/image/MainImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setImageSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/main/image/MainImageView;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mycompany/app/main/image/MainImageView;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/mycompany/app/main/image/MainImageView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setValAnimHide(F)V

    return-void
.end method

.method private setAreaRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x1bc

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1, v1}, Lcom/mycompany/app/view/MyAreaView;->f(Landroid/graphics/RectF;II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x4

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private setImageLoaded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->i:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/main/image/MainImageView;->j:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lcom/mycompany/app/main/MainUtil;->s1(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x2

    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    invoke-static {p0, p1, v1}, Lcom/mycompany/app/main/MainUtil;->s1(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->B:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :cond_3
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->O:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p1, :cond_4

    .line 35
    .line 36
    :goto_1
    return-void

    .line 37
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/image/MainImageView$6;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageView$6;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private setImageSuccess(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/image/MainImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->y:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->y:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->m()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->h:Lcom/mycompany/app/main/image/MainImageView$MainImageListener;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/image/MainImageView$MainImageListener;->e(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->h:Lcom/mycompany/app/main/image/MainImageView$MainImageListener;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/mycompany/app/main/image/MainImageView$MainImageListener;->d()V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_1
    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v0, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final g(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v1, p0, Lcom/mycompany/app/main/image/MainImageView;->t:I

    .line 12
    .line 13
    sub-int/2addr p1, v1

    .line 14
    div-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    sub-int/2addr p2, v1

    .line 17
    div-int/lit8 p2, p2, 0x2

    .line 18
    .line 19
    add-int v2, p1, v1

    .line 20
    .line 21
    add-int/2addr v1, p2

    .line 22
    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-wide/16 v5, 0x0

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/high16 v3, -0x1000000

    .line 11
    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->g4(Landroid/view/View;IFJLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v3, v3, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 32
    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move-object v1, v3

    .line 37
    :goto_0
    if-nez v1, :cond_4

    .line 38
    .line 39
    :goto_1
    return-object v0

    .line 40
    :cond_4
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 52
    .line 53
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ge v3, v5, :cond_6

    .line 90
    .line 91
    if-lt v4, v1, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    sub-int/2addr v5, v3

    .line 95
    sub-int/2addr v1, v4

    .line 96
    :try_start_0
    invoke-static {v0, v3, v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :catch_0
    :cond_6
    :goto_2
    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->A:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->a:Landroid/net/Uri;

    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->a:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    return v0

    .line 35
    :cond_3
    :goto_0
    return v2
.end method

.method public final j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->x:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageView;->y:Z

    .line 11
    .line 12
    new-instance v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->a:Landroid/net/Uri;

    .line 18
    .line 19
    iput-object p2, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p4, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->d:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/mycompany/app/main/image/MainImageView;->F:Z

    .line 28
    .line 29
    iput v1, p0, Lcom/mycompany/app/main/image/MainImageView;->G:I

    .line 30
    .line 31
    iput v1, p0, Lcom/mycompany/app/main/image/MainImageView;->H:I

    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->r()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 46
    .line 47
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    const-string p1, "image/svg"

    .line 54
    .line 55
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p1, 0x1

    .line 61
    invoke-static {p2, v0, v0, p1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    :goto_0
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageView;->m:Z

    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 72
    .line 73
    new-instance p2, Lcom/mycompany/app/main/image/MainImageView$2;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/image/MainImageView$2;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->A:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->e:Landroid/graphics/Matrix;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v1, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->e:Landroid/graphics/Matrix;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->D:Landroid/graphics/Matrix;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->C:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->a:Landroid/net/Uri;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/mycompany/app/main/image/MainImageView;->j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 62
    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_6
    new-instance v1, Lcom/mycompany/app/main/image/MainImageView$8;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageView$8;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageView;->i:Z

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageView;->m:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageView;->M:Lcom/mycompany/app/view/MyGlideTarget;

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageView;->K:Lcom/mycompany/app/view/MyGlideTarget;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 52
    .line 53
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 61
    .line 62
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->h:Lcom/mycompany/app/main/image/MainImageView$MainImageListener;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->r:Landroid/graphics/Paint;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->A:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->B:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->C:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 87
    .line 88
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageView;->B:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, p0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 11
    .line 12
    iput-object v3, p0, Lcom/mycompany/app/main/image/MainImageView;->B:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 18
    .line 19
    if-eqz v4, :cond_2

    .line 20
    .line 21
    iget-object v4, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-object v3, v1, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->e:Landroid/graphics/Matrix;

    .line 32
    .line 33
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->A:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->C:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iput-object v2, p0, Lcom/mycompany/app/main/image/MainImageView;->C:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    :goto_1
    return-void

    .line 60
    :cond_5
    new-instance v1, Lcom/mycompany/app/main/image/MainImageView$7;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageView$7;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final n()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/image/MainImageView;->G:I

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/main/image/MainImageView;->H:I

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyAreaView;->setJustRect(Landroid/graphics/RectF;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 36
    .line 37
    iget v4, p0, Lcom/mycompany/app/main/image/MainImageView;->G:I

    .line 38
    .line 39
    iget v5, p0, Lcom/mycompany/app/main/image/MainImageView;->H:I

    .line 40
    .line 41
    const/16 v7, 0x1bc

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const/16 v6, 0x1bc

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public final o(Lcom/mycompany/app/view/MyFadeFrame;Lcom/mycompany/app/view/MyAreaView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyFadeFrame;->setInvisible(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p2, Lcom/mycompany/app/main/image/MainImageView$11;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/image/MainImageView$11;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImageView;->k:Lcom/mycompany/app/view/MyFadeFrame;

    .line 43
    .line 44
    :cond_3
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImageView;->l:Lcom/mycompany/app/view/MyAreaView;

    .line 45
    .line 46
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->r:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/mycompany/app/main/image/MainImageView;->v:F

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/main/image/MainImageView;->w:F

    .line 20
    .line 21
    iget v3, p0, Lcom/mycompany/app/main/image/MainImageView;->u:I

    .line 22
    .line 23
    int-to-float v3, v3

    .line 24
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    int-to-float p3, p1

    .line 10
    const/high16 p4, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr p3, p4

    .line 13
    iput p3, p0, Lcom/mycompany/app/main/image/MainImageView;->v:F

    .line 14
    .line 15
    int-to-float p3, p2

    .line 16
    div-float/2addr p3, p4

    .line 17
    iput p3, p0, Lcom/mycompany/app/main/image/MainImageView;->w:F

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/main/image/MainImageView;->g(II)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->n()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->x:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImageView;->x:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p3, p1, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p4, p1, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/mycompany/app/main/image/MainImageView;->j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageView;->y:Z

    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 26
    .line 27
    if-nez p2, :cond_4

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_4
    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 32
    .line 33
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->F:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/mycompany/app/main/image/MainImageView;->G:I

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/main/image/MainImageView;->H:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->h()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    .line 24
    .line 25
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 38
    .line 39
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageView;->y:Z

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->y:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->m()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->h:Lcom/mycompany/app/main/image/MainImageView$MainImageListener;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/mycompany/app/main/image/MainImageView$MainImageListener;->e(Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method public final q(Lcom/mycompany/app/main/MainActivity;ZILcom/mycompany/app/main/image/MainImageView$MainImageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mycompany/app/main/image/MainImageView;->h:Lcom/mycompany/app/main/image/MainImageView$MainImageListener;

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/mycompany/app/main/image/MainImageView;->i:Z

    .line 10
    .line 11
    iput p3, p0, Lcom/mycompany/app/main/image/MainImageView;->j:I

    .line 12
    .line 13
    const/high16 p1, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    sget p2, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 18
    .line 19
    int-to-float p2, p2

    .line 20
    iput p2, p0, Lcom/mycompany/app/main/image/MainImageView;->s:F

    .line 21
    .line 22
    sget p2, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 23
    .line 24
    iput p2, p0, Lcom/mycompany/app/main/image/MainImageView;->t:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget p2, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 28
    .line 29
    int-to-float p2, p2

    .line 30
    div-float/2addr p2, p1

    .line 31
    iput p2, p0, Lcom/mycompany/app/main/image/MainImageView;->s:F

    .line 32
    .line 33
    sget p2, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 34
    .line 35
    int-to-float p2, p2

    .line 36
    const/high16 p3, 0x3f400000    # 0.75f

    .line 37
    .line 38
    mul-float/2addr p2, p3

    .line 39
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/mycompany/app/main/image/MainImageView;->t:I

    .line 44
    .line 45
    :goto_0
    iget p2, p0, Lcom/mycompany/app/main/image/MainImageView;->t:I

    .line 46
    .line 47
    int-to-float p2, p2

    .line 48
    div-float/2addr p2, p1

    .line 49
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 50
    .line 51
    int-to-float p1, p1

    .line 52
    add-float/2addr p2, p1

    .line 53
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/mycompany/app/main/image/MainImageView;->u:I

    .line 58
    .line 59
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 14
    .line 15
    iget v2, p0, Lcom/mycompany/app/main/image/MainImageView;->s:F

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    invoke-direct {v1, p0, v2, v3}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->q:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/main/image/MainImageView;->g(II)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->r:Landroid/graphics/Paint;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    new-instance v1, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageView;->r:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->r:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->r:Landroid/graphics/Paint;

    .line 56
    .line 57
    const/high16 v1, -0x5f000000

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageView;->F:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/mycompany/app/main/image/MainImageView;->G:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/mycompany/app/main/image/MainImageView;->H:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->h()V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageView;->i:Z

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 50
    .line 51
    :cond_2
    new-instance p1, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/main/image/MainImageView$9;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageView$9;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Lcom/mycompany/app/main/image/MainImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->D:Landroid/graphics/Matrix;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 69
    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/image/MainImageView$10;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageView$10;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageView;->n()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageView;->E:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
