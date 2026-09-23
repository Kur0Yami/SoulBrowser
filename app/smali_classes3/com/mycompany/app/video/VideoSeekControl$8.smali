.class Lcom/mycompany/app/video/VideoSeekControl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoSeekControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoSeekControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$8;->a:Lcom/mycompany/app/video/VideoSeekControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/video/VideoSeekControl$8;->a:Lcom/mycompany/app/video/VideoSeekControl;

    .line 5
    .line 6
    iget-object p3, p2, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 7
    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    iget-object p3, p2, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 19
    .line 20
    invoke-interface {p3}, Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;->f()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p2, p3, p1}, Lcom/mycompany/app/video/VideoSeekControl;->f(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$8;->a:Lcom/mycompany/app/video/VideoSeekControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoSeekControl;->n:Z

    .line 17
    .line 18
    invoke-static {p1}, Lcom/mycompany/app/video/VideoSeekControl;->c(Lcom/mycompany/app/video/VideoSeekControl;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$8;->a:Lcom/mycompany/app/video/VideoSeekControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoSeekControl;->c:Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/video/VideoSeekControl;->d(Lcom/mycompany/app/video/VideoSeekControl;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoSeekControl;->j(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
