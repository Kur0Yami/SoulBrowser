.class Lcom/mycompany/app/web/WebViewActivity$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$31;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$31;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s7(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Bb:Landroidx/mediarouter/app/MediaRouteButton;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$32;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$32;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H4()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->m4()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->h9()V

    .line 51
    .line 52
    .line 53
    sget v1, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$35;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$35;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method
