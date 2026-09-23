.class Lcom/mycompany/app/help/PayHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/help/PayHelper$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$1$1;->c:Lcom/mycompany/app/help/PayHelper$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper$1$1;->c:Lcom/mycompany/app/help/PayHelper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/help/PayHelper$1;->c:Lcom/mycompany/app/help/PayHelper;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClient;->h(Lcom/mycompany/app/help/PayHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
