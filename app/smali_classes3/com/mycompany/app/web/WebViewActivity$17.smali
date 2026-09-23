.class Lcom/mycompany/app/web/WebViewActivity$17;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$17;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public final run_disabled()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$17;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u9:Lcom/mycompany/app/help/PayHelper;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance v1, Lcom/mycompany/app/help/PayHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$17$1;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$17$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$17;)V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v1, v2, v4, v3}, Lcom/mycompany/app/help/PayHelper;-><init>(Landroid/content/Context;ZLcom/mycompany/app/help/PayHelper$PayListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u9:Lcom/mycompany/app/help/PayHelper;

    .line 29
    .line 30
    return-void
.end method
