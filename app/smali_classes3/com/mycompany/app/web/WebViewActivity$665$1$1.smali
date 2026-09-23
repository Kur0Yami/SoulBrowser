.class Lcom/mycompany/app/web/WebViewActivity$665$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$665$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$665$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$665$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$665$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$665$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$665$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$665$1;->c:Lcom/mycompany/app/web/WebViewActivity$665;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$665;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Q6(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$665;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 15
    .line 16
    const/16 v2, 0x10

    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$667;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$667;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$666;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$666;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
