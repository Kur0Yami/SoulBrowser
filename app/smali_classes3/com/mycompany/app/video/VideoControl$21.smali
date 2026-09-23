.class Lcom/mycompany/app/video/VideoControl$21;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$21;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl$21;->c:Lcom/mycompany/app/video/VideoControl;

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
    invoke-interface {v0, v1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->E(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
