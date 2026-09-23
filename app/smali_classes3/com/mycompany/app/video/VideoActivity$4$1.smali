.class Lcom/mycompany/app/video/VideoActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$4$1;->c:Lcom/mycompany/app/video/VideoActivity$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$4$1;->c:Lcom/mycompany/app/video/VideoActivity$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$4;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->s2:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->s2:Landroid/graphics/SurfaceTexture;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Landroid/view/Surface;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->t2:Landroid/view/Surface;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$4$1$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$4$1$1;-><init>(Lcom/mycompany/app/video/VideoActivity$4$1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
