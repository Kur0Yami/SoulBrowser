.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;
    }
.end annotation


# instance fields
.field public final c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public final k:I

.field public l:Z

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->k:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->i:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, p1

    .line 36
    :goto_1
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->k:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->i:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget v1, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->i:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_1
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    if-ne v1, v0, :cond_3

    .line 52
    .line 53
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->j:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->j:I

    .line 58
    .line 59
    :cond_3
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->k:I

    .line 60
    .line 61
    if-eq v0, v2, :cond_4

    .line 62
    .line 63
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->j:I

    .line 64
    .line 65
    if-lt v1, v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    .line 6
    .line 7
    invoke-static {v2, v0}, Lcom/bumptech/glide/util/Preconditions;->a(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v2, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->f:Z

    .line 29
    .line 30
    if-nez v2, :cond_5

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->f:Z

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-boolean v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->j:Z

    .line 39
    .line 40
    if-nez v3, :cond_4

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-boolean v2, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->f:Z

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iput-boolean v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->f:Z

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    iput-boolean v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->j:Z

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->a()V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v1, "Cannot subscribe twice in a row"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v1, "Cannot subscribe to a cleared frame loader"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_5
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getIntrinsicWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getIntrinsicHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->n:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    new-instance v3, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->n:Landroid/graphics/Rect;

    .line 32
    .line 33
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->n:Landroid/graphics/Rect;

    .line 34
    .line 35
    const/16 v4, 0x77

    .line 36
    .line 37
    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->l:Z

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->i:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v0, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->k:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->l:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->n:Landroid/graphics/Rect;

    .line 57
    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    new-instance v1, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->n:Landroid/graphics/Rect;

    .line 66
    .line 67
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->n:Landroid/graphics/Rect;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 70
    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    new-instance v2, Landroid/graphics/Paint;

    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 80
    .line 81
    :cond_5
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    iget v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->p:I

    .line 6
    .line 7
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    iget v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->o:I

    .line 6
    .line 7
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->l:Z

    .line 6
    .line 7
    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->m:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->h:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Preconditions;->a(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->i:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->f:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iput-boolean v0, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->f:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->g:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->b()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public final start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->g:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->j:I

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->i:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->g:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->f:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iput-boolean v0, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->f:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method
