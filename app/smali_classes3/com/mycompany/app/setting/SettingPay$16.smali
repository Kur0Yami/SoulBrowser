.class Lcom/mycompany/app/setting/SettingPay$16;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$16;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$16;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->l2:Lcom/android/billingclient/api/ProductDetails;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingPay;->l2:Lcom/android/billingclient/api/ProductDetails;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPay;->a2:Lcom/mycompany/app/help/PayHelper;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v3, v2, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v4, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->a()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->a()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->a()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->b:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    iput-object v1, v4, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->b:Ljava/lang/String;

    .line 63
    .line 64
    :cond_4
    iget-object v1, v4, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 65
    .line 66
    const-string v5, "ProductDetails is required for constructing ProductDetailsParams."

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    new-instance v1, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 71
    .line 72
    invoke-direct {v1, v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;-><init>(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v4, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    iput-boolean v5, v4, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->a:Z

    .line 90
    .line 91
    iput-object v4, v1, Lcom/android/billingclient/api/BillingFlowParams$Builder;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 92
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    iput-object v4, v1, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a()Lcom/android/billingclient/api/BillingFlowParams;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v2, v2, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 105
    .line 106
    invoke-virtual {v2, v0, v1}, Lcom/android/billingclient/api/BillingClient;->e(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget v1, v1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 114
    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    .line 119
    .line 120
    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    :cond_7
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 125
    .line 126
    if-nez v0, :cond_8

    .line 127
    .line 128
    :goto_1
    return-void

    .line 129
    :cond_8
    new-instance v1, Lcom/mycompany/app/setting/SettingPay$16$1;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingPay$16$1;-><init>(Lcom/mycompany/app/setting/SettingPay$16;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    return-void
.end method
