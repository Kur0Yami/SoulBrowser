.class Lcom/mycompany/app/dialog/DialogLockReset$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLockReset;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLockReset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLockReset$7;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLockReset$7;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/dialog/DialogLockReset$8;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogLockReset$8;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
