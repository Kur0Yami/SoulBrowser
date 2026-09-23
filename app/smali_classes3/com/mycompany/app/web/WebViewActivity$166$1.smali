.class Lcom/mycompany/app/web/WebViewActivity$166$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$166;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$166;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$166$1;->c:Lcom/mycompany/app/web/WebViewActivity$166;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$166$1;->c:Lcom/mycompany/app/web/WebViewActivity$166;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$166;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sput-boolean v2, Lcom/mycompany/app/pref/PrefMain;->v:Z

    .line 11
    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sput-boolean v2, Lcom/mycompany/app/pref/PrefMain;->x:Z

    .line 17
    .line 18
    sput v2, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->h(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$168;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$168;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
