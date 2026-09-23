.class Lcom/mycompany/app/setting/SettingPay$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingPay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$6;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$6;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->a2:Lcom/mycompany/app/help/PayHelper;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClient;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_1
    iput-object v3, v1, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 25
    .line 26
    iput-object v3, v1, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 27
    .line 28
    iput-object v3, v1, Lcom/mycompany/app/help/PayHelper;->f:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    :goto_0
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingPay;->a2:Lcom/mycompany/app/help/PayHelper;

    .line 31
    .line 32
    :cond_2
    return-void
.end method
