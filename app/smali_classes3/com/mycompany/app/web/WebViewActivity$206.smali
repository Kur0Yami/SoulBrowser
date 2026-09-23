.class Lcom/mycompany/app/web/WebViewActivity$206;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$206;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$206;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->I()V

    .line 30
    .line 31
    .line 32
    iput-boolean v3, v1, Lcom/mycompany/app/web/WebNestView;->e1:Z

    .line 33
    .line 34
    iget-object v3, v1, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v3, v4}, Lcom/mycompany/app/web/WebCrashView;->setCrashUrl(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebCrashView;->b()V

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iput-object v4, v1, Lcom/mycompany/app/web/WebNestView;->J1:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, v1, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    new-instance v4, Lcom/mycompany/app/web/WebNestView$13;

    .line 63
    .line 64
    invoke-direct {v4, v1}, Lcom/mycompany/app/web/WebNestView$13;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->A8()V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ic:Z

    .line 74
    .line 75
    return-void
.end method
