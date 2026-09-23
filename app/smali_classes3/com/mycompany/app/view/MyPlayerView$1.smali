.class Lcom/mycompany/app/view/MyPlayerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPlayerView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPlayerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$1;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/view/MyPlayerView$1;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    iput-object p1, p2, Lcom/mycompany/app/view/MyPlayerView;->k:Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    iget-object p1, p2, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyPlayerView$1$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyPlayerView$1$1;-><init>(Lcom/mycompany/app/view/MyPlayerView$1;)V

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$1;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/mycompany/app/view/MyPlayerView;->k:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    iput-object v0, p1, Lcom/mycompany/app/view/MyPlayerView;->l:Landroid/view/Surface;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$1;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/view/MyPlayerView;->b(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/view/MyPlayerView;->x:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$1;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyPlayerView;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
