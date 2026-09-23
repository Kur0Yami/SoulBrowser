.class Lcom/mycompany/app/view/MyDialogNormal$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogNormal;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$2;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$2;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/view/MyDialogNormal;->d(Lcom/mycompany/app/view/MyDialogNormal;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->n()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$2$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$2$1;-><init>(Lcom/mycompany/app/view/MyDialogNormal$2;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
