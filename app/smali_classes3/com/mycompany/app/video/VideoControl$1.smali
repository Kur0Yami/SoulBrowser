.class Lcom/mycompany/app/video/VideoControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$1;->a:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl$1;->a:Lcom/mycompany/app/video/VideoControl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->setIconsPressed(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/video/VideoControl$1;->a:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->b(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
