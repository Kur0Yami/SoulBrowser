.class Lcom/mycompany/app/main/MainActivity$47$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainActivity$47$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity$47$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$47$1$1;->c:Lcom/mycompany/app/main/MainActivity$47$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$47$1$1;->c:Lcom/mycompany/app/main/MainActivity$47$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity$47$1;->c:Lcom/mycompany/app/main/MainActivity$47;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity$47;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v2}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->F7(Landroid/view/Window;ZZ)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/main/MainActivity$48;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainActivity$48;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
