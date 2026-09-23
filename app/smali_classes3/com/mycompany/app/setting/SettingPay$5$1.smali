.class Lcom/mycompany/app/setting/SettingPay$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/help/PayHelper$PayListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPay$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPay$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$5$1;->a:Lcom/mycompany/app/setting/SettingPay$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$5$1;->a:Lcom/mycompany/app/setting/SettingPay$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPay$5;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPay;->a2:Lcom/mycompany/app/help/PayHelper;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/help/PayHelper;->c(Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$5$1;->a:Lcom/mycompany/app/setting/SettingPay$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPay$5;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingPay;->b2:Z

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    move v1, v3

    .line 13
    :cond_0
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingPay;->c2:Z

    .line 14
    .line 15
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    :goto_0
    return v3

    .line 25
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingPay$9;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingPay$9;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return v3
.end method

.method public final c(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$5$1;->a:Lcom/mycompany/app/setting/SettingPay$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPay$5;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingPay;->b2:Z

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->e2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->f2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, "soul_remove_ads"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/mycompany/app/setting/SettingPay;->O0(Ljava/util/HashMap;Ljava/lang/String;)Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 33
    .line 34
    const-string v1, "soul_donation_1"

    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/mycompany/app/setting/SettingPay;->O0(Ljava/util/HashMap;Ljava/lang/String;)Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->e2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 41
    .line 42
    const-string v1, "soul_donation_2"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lcom/mycompany/app/setting/SettingPay;->O0(Ljava/util/HashMap;Ljava/lang/String;)Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, v0, Lcom/mycompany/app/setting/SettingPay;->f2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 49
    .line 50
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingPay$7;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingPay$7;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$5$1;->a:Lcom/mycompany/app/setting/SettingPay$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPay$5;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingPay;->b2:Z

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingPay$8;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingPay$8;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
