.class Lcom/mycompany/app/setting/SettingPay$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay$4;->a:Lcom/mycompany/app/setting/SettingPay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingPay;->m2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPay$4;->a:Lcom/mycompany/app/setting/SettingPay;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-eq p2, p3, :cond_3

    .line 10
    .line 11
    const/4 p3, 0x3

    .line 12
    if-eq p2, p3, :cond_2

    .line 13
    .line 14
    const/4 p3, 0x6

    .line 15
    const/4 p4, 0x0

    .line 16
    if-eq p2, p3, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x7

    .line 19
    if-eq p2, p3, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPay;->f2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 23
    .line 24
    invoke-virtual {p1, p2, p4}, Lcom/mycompany/app/setting/SettingPay;->Q0(Lcom/mycompany/app/setting/SettingPay$PayItem;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPay;->e2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 29
    .line 30
    invoke-virtual {p1, p2, p4}, Lcom/mycompany/app/setting/SettingPay;->Q0(Lcom/mycompany/app/setting/SettingPay$PayItem;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance p2, Landroid/content/Intent;

    .line 35
    .line 36
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 37
    .line 38
    const-class p4, Lcom/mycompany/app/setting/SettingClean;

    .line 39
    .line 40
    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    const-string p3, "EXTRA_PATH"

    .line 44
    .line 45
    iget-object p4, p1, Lcom/mycompany/app/setting/SettingPay;->X1:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const/16 p3, 0x20

    .line 51
    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 57
    .line 58
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/setting/SettingPay;->Q0(Lcom/mycompany/app/setting/SettingPay$PayItem;Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
