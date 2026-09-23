.class Lcom/mycompany/app/web/WebViewActivity$520$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$520$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$520$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$520$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$520$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$520$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$520$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$520$1;->a:Lcom/mycompany/app/web/WebViewActivity$520;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$520;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$521;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$521;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->J0:Lcom/mycompany/app/main/MainApp$AdBusyListener;

    .line 29
    .line 30
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$520;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->K7:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogAdNative;->G()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method
