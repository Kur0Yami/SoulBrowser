.class Lcom/mycompany/app/view/MyDialogBottom$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$2;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$2;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->b(Lcom/mycompany/app/view/MyDialogBottom;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->d(Lcom/mycompany/app/view/MyDialogBottom;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$2$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$2$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$2;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
