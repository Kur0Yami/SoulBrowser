.class Lcom/mycompany/app/dialog/DialogPreview$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$29;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$29;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoSeekControl;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/mycompany/app/video/VideoSeekControl;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 25
    .line 26
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    const/4 v3, -0x2

    .line 30
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x50

    .line 34
    .line 35
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 38
    .line 39
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 40
    .line 41
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$30;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$30;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method
