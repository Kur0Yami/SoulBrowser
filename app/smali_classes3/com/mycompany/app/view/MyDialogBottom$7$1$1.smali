.class Lcom/mycompany/app/view/MyDialogBottom$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom$7$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom$7$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$7$1$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$7$1$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$7$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom$7;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->h()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v3, Lcom/mycompany/app/view/MyDialogBottom$11;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom$11;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$7;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$7$1$1$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$7$1$1$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$7$1$1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
