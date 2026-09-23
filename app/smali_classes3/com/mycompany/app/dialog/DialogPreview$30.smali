.class Lcom/mycompany/app/dialog/DialogPreview$30;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$30;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$30;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v3, Lcom/mycompany/app/dialog/DialogPreview$31;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogPreview$31;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/video/VideoSeekControl;->i(Landroid/content/Context;Lcom/mycompany/app/video/VideoSeekControl$SeekCtrlListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
