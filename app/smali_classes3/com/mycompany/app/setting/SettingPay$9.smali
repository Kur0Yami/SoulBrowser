.class Lcom/mycompany/app/setting/SettingPay$9;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$9;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay$9;->c:Lcom/mycompany/app/setting/SettingPay;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingPay$PayItem;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/setting/SettingPay;->c2:Z

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    sget v1, Lnet/kaki87/soul2/testing/R$string;->paid:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
