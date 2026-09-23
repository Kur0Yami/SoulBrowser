.class Lcom/mycompany/app/setting/SettingPay$3;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$3;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingPay;->m2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$3;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingPay;->D0()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingActivity;->M1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 17
    .line 18
    new-instance v4, Lcom/mycompany/app/setting/SettingPay$4;

    .line 19
    .line 20
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingPay$4;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 21
    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 30
    .line 31
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingListAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->a2:Lcom/mycompany/app/help/PayHelper;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingPay$5;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingPay$5;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const-string v3, "EXTRA_NOTI"

    .line 70
    .line 71
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    const-string v3, "EXTRA_INDEX"

    .line 79
    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    iput v2, v0, Lcom/mycompany/app/setting/SettingPay;->k2:I

    .line 85
    .line 86
    return-void
.end method
