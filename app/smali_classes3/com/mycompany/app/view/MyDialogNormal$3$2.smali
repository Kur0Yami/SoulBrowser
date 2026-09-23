.class Lcom/mycompany/app/view/MyDialogNormal$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogNormal$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$3$2;->c:Lcom/mycompany/app/view/MyDialogNormal$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$3$2;->c:Lcom/mycompany/app/view/MyDialogNormal$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal$3;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 6
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
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v2, Lcom/mycompany/app/view/MyDialogNormal$5;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyDialogNormal$5;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->j7(Landroid/view/Window;Z)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$3$2$1;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$3$2$1;-><init>(Lcom/mycompany/app/view/MyDialogNormal$3$2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method
