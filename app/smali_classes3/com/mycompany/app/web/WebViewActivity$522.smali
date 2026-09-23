.class Lcom/mycompany/app/web/WebViewActivity$522;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$522;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$522;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$523;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$523;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainApp;->d(Landroid/app/Activity;ILcom/mycompany/app/main/MainApp$AdLocalListener;)Lcom/mycompany/app/view/MyAdNative;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->d7(Lcom/mycompany/app/view/MyAdNative;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {v2, v1, v0}, Lcom/mycompany/app/view/MyWebBody;->b(Lcom/mycompany/app/view/MyAdNative;Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method
