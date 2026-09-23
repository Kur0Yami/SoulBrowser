.class Lcom/mycompany/app/video/VideoActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$4;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/video/VideoActivity$4;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iput-object p1, p2, Lcom/mycompany/app/video/VideoActivity;->s2:Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    iget-object p1, p2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Lcom/mycompany/app/video/VideoActivity$4$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/video/VideoActivity$4$1;-><init>(Lcom/mycompany/app/video/VideoActivity$4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$4;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->s2:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    iput-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->t2:Landroid/view/Surface;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$4;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iget v0, p1, Lcom/mycompany/app/video/VideoActivity;->O2:I

    .line 19
    .line 20
    if-ne v0, p2, :cond_2

    .line 21
    .line 22
    iget v0, p1, Lcom/mycompany/app/video/VideoActivity;->P2:I

    .line 23
    .line 24
    if-eq v0, p3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    :goto_1
    iput p2, p1, Lcom/mycompany/app/video/VideoActivity;->O2:I

    .line 29
    .line 30
    iput p3, p1, Lcom/mycompany/app/video/VideoActivity;->P2:I

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p1, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->E1(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$4;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/video/VideoActivity;->M0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
