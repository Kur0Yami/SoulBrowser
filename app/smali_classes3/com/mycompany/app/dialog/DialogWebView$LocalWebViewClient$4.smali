.class Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient$4;->c:Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient$4;->c:Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogWebView;->D(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->T()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->p1:I

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-lt v1, v2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->n1:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->o1:Z

    .line 35
    .line 36
    iput v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->p1:I

    .line 37
    .line 38
    iput v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->q1:I

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->r1:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->m1:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method
