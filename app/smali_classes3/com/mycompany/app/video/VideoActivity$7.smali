.class Lcom/mycompany/app/video/VideoActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$7;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity$7;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-boolean v3, v1, Lcom/mycompany/app/video/VideoActivity;->D1:Z

    .line 13
    .line 14
    iget-boolean v4, v1, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 15
    .line 16
    move-object v5, v1

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/video/VideoControl;->y(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ZZLcom/mycompany/app/video/VideoControl$ControlListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 21
    .line 22
    iget-boolean v2, v1, Lcom/mycompany/app/video/VideoActivity;->k3:Z

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoControl;->setIconDown(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$8;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Lcom/mycompany/app/video/VideoActivity$8;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
