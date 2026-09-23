.class public final synthetic Lcom/android/billingclient/api/zzck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic f:Lcom/android/billingclient/api/ConsumeParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/billingclient/api/zzck;->c:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/billingclient/api/zzck;->f:Lcom/android/billingclient/api/ConsumeParams;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->f:Lcom/android/billingclient/api/ConsumeParams;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/billingclient/api/ConsumeParams;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/billingclient/api/zzck;->c:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 8
    .line 9
    invoke-interface {v1, p1, v0}, Lcom/android/billingclient/api/ConsumeResponseListener;->f(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
