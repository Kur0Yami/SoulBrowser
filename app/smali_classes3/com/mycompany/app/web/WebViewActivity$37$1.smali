.class Lcom/mycompany/app/web/WebViewActivity$37$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$37;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$37;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$37$1;->c:Lcom/mycompany/app/web/WebViewActivity$37;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$37$1;->c:Lcom/mycompany/app/web/WebViewActivity$37;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$37;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->E9:Z

    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$37;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 13
    .line 14
    const-class v3, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$37;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$37;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$37;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 37
    .line 38
    :cond_0
    return-void
.end method
