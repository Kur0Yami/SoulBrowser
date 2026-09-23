.class Lcom/mycompany/app/help/PayHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/help/PayHelper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$5;->a:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper$5;->a:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget p1, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p2, Lcom/android/billingclient/api/QueryProductDetailsResult;->a:Ljava/util/List;

    .line 17
    .line 18
    if-nez p1, :cond_3

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object v2, v1, Lcom/android/billingclient/api/ProductDetails;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object p1, v0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    invoke-interface {p1, p2}, Lcom/mycompany/app/help/PayHelper$PayListener;->c(Ljava/util/HashMap;)V

    .line 56
    .line 57
    .line 58
    :cond_6
    :goto_1
    return-void
.end method
