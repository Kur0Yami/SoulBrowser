.class Lcom/mycompany/app/setting/SettingPay$7;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$7;->c:Lcom/mycompany/app/setting/SettingPay;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$7;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingPay$PayItem;->b:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, v2

    .line 19
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingPay;->e2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget-object v3, v3, Lcom/mycompany/app/setting/SettingPay$PayItem;->b:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move-object v3, v2

    .line 27
    :goto_1
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingPay;->f2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingPay$PayItem;->b:Ljava/lang/String;

    .line 32
    .line 33
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_4

    .line 38
    .line 39
    iget-boolean v4, v0, Lcom/mycompany/app/setting/SettingPay;->c2:Z

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    sget v1, Lnet/kaki87/soul2/testing/R$string;->paid:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_5

    .line 54
    .line 55
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-virtual {v4, v5, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 68
    .line 69
    const/4 v4, 0x6

    .line 70
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_7

    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 80
    .line 81
    const/4 v3, 0x7

    .line 82
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_7
    :goto_2
    iget v1, v0, Lcom/mycompany/app/setting/SettingPay;->k2:I

    .line 86
    .line 87
    if-ltz v1, :cond_8

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->N0(I)Z

    .line 90
    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    iput v1, v0, Lcom/mycompany/app/setting/SettingPay;->k2:I

    .line 94
    .line 95
    :cond_8
    return-void
.end method
