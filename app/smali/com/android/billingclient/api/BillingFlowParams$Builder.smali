.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;


# virtual methods
.method public final a()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_b

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    move v5, v2

    .line 27
    :goto_1
    if-ge v5, v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    check-cast v6, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 36
    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "ProductDetailsParams cannot be null."

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/BillingFlowParams;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/billingclient/api/ProductDetails;->b:Lorg/json/JSONObject;

    .line 66
    .line 67
    const-string v4, "packageName"

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    move v0, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move v0, v2

    .line 82
    :goto_2
    iput-boolean v0, v3, Lcom/android/billingclient/api/BillingFlowParams;->a:Z

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v1, v2

    .line 104
    :cond_5
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    const-string v1, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_7
    :goto_4
    iget-boolean v0, v0, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->a:Z

    .line 122
    .line 123
    if-nez v0, :cond_9

    .line 124
    .line 125
    if-nez v1, :cond_9

    .line 126
    .line 127
    if-nez v2, :cond_8

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string v1, "Old SKU purchase information(token/id) or original external transaction id must be provided."

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_9
    :goto_5
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v0, v3, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 144
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v0, v3, Lcom/android/billingclient/api/BillingFlowParams;->d:Ljava/util/ArrayList;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->a:Ljava/util/ArrayList;

    .line 153
    .line 154
    if-eqz v0, :cond_a

    .line 155
    .line 156
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzbw;->s(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_6

    .line 161
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_6
    iput-object v0, v3, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 166
    .line 167
    return-object v3

    .line 168
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    const-string v1, "Details of the products must be provided."

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0
.end method
