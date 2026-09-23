.class Lcom/mycompany/app/video/VideoControl$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$16;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl$16;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p1, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->G()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->D()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->c()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->j()V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
