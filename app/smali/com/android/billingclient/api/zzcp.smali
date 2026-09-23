.class public final synthetic Lcom/android/billingclient/api/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/zzcv;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcp;->c:Lcom/android/billingclient/api/zzcv;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcp;->c:Lcom/android/billingclient/api/zzcv;

    .line 2
    .line 3
    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
