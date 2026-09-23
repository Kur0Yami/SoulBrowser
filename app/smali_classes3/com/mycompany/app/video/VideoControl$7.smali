.class Lcom/mycompany/app/video/VideoControl$7;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$7;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl$7;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->controlSize(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
