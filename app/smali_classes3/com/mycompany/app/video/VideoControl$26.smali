.class Lcom/mycompany/app/video/VideoControl$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/video/VideoControl;->setTouchLock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$26;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl$26;->c:Lcom/mycompany/app/video/VideoControl;

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
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-interface {v1, v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->z(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
