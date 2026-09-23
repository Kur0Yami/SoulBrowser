.class Lcom/mycompany/app/web/WebViewActivity$664;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$664;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$664;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 16
    .line 17
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 18
    .line 19
    and-int/lit8 v1, v0, 0x8

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    if-eq v1, v3, :cond_4

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    and-int/2addr v0, v1

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$667;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$667;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    :goto_1
    return-void

    .line 49
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$666;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$666;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iget-object v0, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$665;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$665;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->B(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
