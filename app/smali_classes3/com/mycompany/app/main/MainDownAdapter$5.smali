.class Lcom/mycompany/app/main/MainDownAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/view/MyRoundImage;

.field public final synthetic g:Lcom/mycompany/app/main/MainDownAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownAdapter;Ljava/lang/String;Lcom/mycompany/app/view/MyRoundImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownAdapter$5;->g:Lcom/mycompany/app/main/MainDownAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownAdapter$5;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownAdapter$5;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter$5;->g:Lcom/mycompany/app/main/MainDownAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

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
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 17
    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter;->k:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    new-instance v1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter;->k:Landroid/os/Handler;

    .line 32
    .line 33
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownAdapter;->k:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v1, Lcom/mycompany/app/main/MainDownAdapter$5$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainDownAdapter$5$1;-><init>(Lcom/mycompany/app/main/MainDownAdapter$5;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
