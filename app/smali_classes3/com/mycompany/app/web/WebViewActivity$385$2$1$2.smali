.class Lcom/mycompany/app/web/WebViewActivity$385$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$385$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$385$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$385$2$1$2;->a:Lcom/mycompany/app/web/WebViewActivity$385$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$385$2$1$2;->a:Lcom/mycompany/app/web/WebViewActivity$385$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$385$2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$385$2;->c:Lcom/mycompany/app/web/WebViewActivity$385;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->yl:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->yl:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 23
    .line 24
    const-class v4, Lcom/mycompany/app/main/list/MainListDown;

    .line 25
    .line 26
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "EXTRA_PATH"

    .line 30
    .line 31
    iget-object v2, v2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385$2;->c:Lcom/mycompany/app/web/WebViewActivity$385;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$385$2$1$2;->a:Lcom/mycompany/app/web/WebViewActivity$385$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$385$2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385$2;->c:Lcom/mycompany/app/web/WebViewActivity$385;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 11
    .line 12
    return-void
.end method
