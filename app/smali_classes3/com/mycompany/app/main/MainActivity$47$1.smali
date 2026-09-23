.class Lcom/mycompany/app/main/MainActivity$47$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainActivity$47;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity$47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$47$1;->c:Lcom/mycompany/app/main/MainActivity$47;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$47$1;->c:Lcom/mycompany/app/main/MainActivity$47;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity$47;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->H7(Landroid/view/Window;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v1, Lcom/mycompany/app/main/MainActivity$47$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$47$1$1;-><init>(Lcom/mycompany/app/main/MainActivity$47$1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
