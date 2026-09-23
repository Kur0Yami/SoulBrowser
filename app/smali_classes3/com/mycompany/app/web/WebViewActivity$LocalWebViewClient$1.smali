.class Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->r6()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->p1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v4, v1, v3}, Lcom/mycompany/app/web/WebNestView;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->I3(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->S6(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
