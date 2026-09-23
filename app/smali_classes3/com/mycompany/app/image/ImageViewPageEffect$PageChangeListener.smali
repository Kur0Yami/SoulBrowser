.class Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageChangeListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-le v1, v2, :cond_3

    .line 12
    .line 13
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 14
    .line 15
    if-le v1, v2, :cond_3

    .line 16
    .line 17
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 34
    .line 35
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 36
    .line 37
    div-int/lit8 v6, v1, 0x2

    .line 38
    .line 39
    iget v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    xor-int/lit8 v3, v0, 0x1

    .line 48
    .line 49
    move v4, p1

    .line 50
    move/from16 v5, p2

    .line 51
    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 57
    .line 58
    iget v12, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 59
    .line 60
    iget v13, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    xor-int/lit8 v9, v0, 0x1

    .line 69
    .line 70
    move v10, p1

    .line 71
    move/from16 v11, p2

    .line 72
    .line 73
    invoke-virtual/range {v8 .. v13}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Lcom/mycompany/app/curl/CurlMesh;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iput p3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->L:I

    .line 4
    .line 5
    iget-object p3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;Lcom/mycompany/app/curl/CurlMesh;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->o:Z

    .line 10
    .line 11
    return v0
.end method

.method public final d(Lcom/mycompany/app/curl/CurlMesh;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iput p3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->L:I

    .line 4
    .line 5
    iget-object p3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;Lcom/mycompany/app/curl/CurlMesh;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyImageView;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 30
    .line 31
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 32
    .line 33
    sub-float v1, v3, v1

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    cmpl-float v0, v1, v0

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    return v0
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->L:I

    .line 4
    .line 5
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$2;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$2;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Lcom/mycompany/app/curl/CurlMesh;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iput p2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->L:I

    .line 4
    .line 5
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;Lcom/mycompany/app/curl/CurlMesh;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
