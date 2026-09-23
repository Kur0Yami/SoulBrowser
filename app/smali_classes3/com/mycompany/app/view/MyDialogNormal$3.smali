.class Lcom/mycompany/app/view/MyDialogNormal$3;
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
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$3;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$3;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->n()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyDialogNormal$4;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyDialogNormal$4;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$3$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$3$1;-><init>(Lcom/mycompany/app/view/MyDialogNormal$3;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    :goto_1
    return-void

    .line 49
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$3$2;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$3$2;-><init>(Lcom/mycompany/app/view/MyDialogNormal$3;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
