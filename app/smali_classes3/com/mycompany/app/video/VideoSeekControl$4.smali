.class Lcom/mycompany/app/video/VideoSeekControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoSeekControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$4;->c:Lcom/mycompany/app/video/VideoSeekControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$4;->c:Lcom/mycompany/app/video/VideoSeekControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->c()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->j()V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoSeekControl;->j(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
