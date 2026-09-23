.class Lcom/mycompany/app/dialog/DialogDownSize$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$5;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize$5;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownSize;->l0:Lcom/mycompany/app/main/MainDownSize;

    .line 9
    .line 10
    if-nez v2, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownSize$6;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownSize$6;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownSize;->c0:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownSize;->d0:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v4, Lcom/mycompany/app/dialog/DialogDownSize$5$1;

    .line 31
    .line 32
    invoke-direct {v4, p0}, Lcom/mycompany/app/dialog/DialogDownSize$5$1;-><init>(Lcom/mycompany/app/dialog/DialogDownSize$5;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/mycompany/app/main/MainDownSize;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
