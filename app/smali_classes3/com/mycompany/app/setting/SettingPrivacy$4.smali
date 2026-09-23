.class Lcom/mycompany/app/setting/SettingPrivacy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPrivacy;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPrivacy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPrivacy$4;->a:Lcom/mycompany/app/setting/SettingPrivacy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingPrivacy;->b2:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingPrivacy$4;->a:Lcom/mycompany/app/setting/SettingPrivacy;

    .line 5
    .line 6
    if-eq p2, p1, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    if-eq p2, p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->I:Z

    .line 19
    .line 20
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 21
    .line 22
    const/16 p2, 0xe

    .line 23
    .line 24
    const-string p4, "mExitNoti"

    .line 25
    .line 26
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p4, p2}, Lcom/mycompany/app/setting/SettingPrivacy;->Q0(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-virtual {p4, p2}, Lcom/mycompany/app/setting/SettingPrivacy;->Q0(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
