.class Lcom/mycompany/app/main/MainActivity$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$48;->c:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$48;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->c0()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    move v4, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {v4}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    :goto_0
    invoke-static {v1, v2, v3, v5, v4}, Lcom/mycompany/app/main/MainUtil;->J7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v1, Lcom/mycompany/app/main/MainActivity$48$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$48$1;-><init>(Lcom/mycompany/app/main/MainActivity$48;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method
