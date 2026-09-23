.class Lcom/mycompany/app/web/WebViewActivity$18;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$18;->c:Lcom/mycompany/app/web/WebViewActivity;

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
    .locals 4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$18;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u9:Lcom/mycompany/app/help/PayHelper;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v1, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClient;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_1
    iput-object v3, v1, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 27
    .line 28
    iput-object v3, v1, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 29
    .line 30
    iput-object v3, v1, Lcom/mycompany/app/help/PayHelper;->f:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    :goto_0
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->u9:Lcom/mycompany/app/help/PayHelper;

    .line 33
    .line 34
    :cond_2
    return-void
.end method
