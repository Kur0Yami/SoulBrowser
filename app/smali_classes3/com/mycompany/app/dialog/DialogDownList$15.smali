.class Lcom/mycompany/app/dialog/DialogDownList$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$15;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$15;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->B0:Lcom/mycompany/app/view/GlideRequests;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    invoke-static {v1}, Lcom/mycompany/app/view/GlideApp;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/mycompany/app/view/GlideRequests;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->B0:Lcom/mycompany/app/view/GlideRequests;

    .line 17
    .line 18
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownList$15$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownList$15$1;-><init>(Lcom/mycompany/app/dialog/DialogDownList$15;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
