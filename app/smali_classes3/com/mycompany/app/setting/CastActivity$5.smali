.class Lcom/mycompany/app/setting/CastActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/CastActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/CastActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity$5;->c:Lcom/mycompany/app/setting/CastActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity$5;->c:Lcom/mycompany/app/setting/CastActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/setting/CastActivity;->h1:I

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, -0x50506

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v1, -0x1000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, -0x1

    .line 19
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 22
    .line 23
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->h7(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    new-instance v2, Lcom/mycompany/app/setting/CastActivity$6;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/CastActivity$6;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_1
    return-void
.end method
