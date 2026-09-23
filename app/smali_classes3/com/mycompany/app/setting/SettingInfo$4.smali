.class Lcom/mycompany/app/setting/SettingInfo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfo$4;->a:Lcom/mycompany/app/setting/SettingInfo;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 1

    sget p1, Lcom/mycompany/app/setting/SettingInfo;->Z1:I

    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfo$4;->a:Lcom/mycompany/app/setting/SettingInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p4, 0x2

    if-eq p2, p4, :cond_2

    const/4 p4, 0x3

    if-eq p2, p4, :cond_1

    const/4 p4, 0x4

    if-eq p2, p4, :cond_0

    const/4 p4, 0x7

    if-eq p2, p4, :cond_4

    const/16 p4, 0x8

    if-eq p2, p4, :cond_5

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingInfo;->S0()V

    return-void

    :cond_5
    sget p4, Lnet/kaki87/soul2/testing/R$string;->build_date_value:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    const-string p2, "Copied text"

    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const-class p4, Lcom/mycompany/app/setting/SettingInfoLicenseList;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p2, "https://github.com/SoulBrowser/SoulBrowser/issues"

    sget p4, Lnet/kaki87/soul2/testing/R$string;->bug_tracker:I

    invoke-virtual {p1, p2, p4, p3}, Lcom/mycompany/app/setting/SettingInfo;->P0(Ljava/lang/String;IZ)V

    return-void

    :cond_2
    const-string p2, "https://git.kaki87.net/VibedByKaKi/soul-browser"

    sget p4, Lnet/kaki87/soul2/testing/R$string;->source_code:I

    invoke-virtual {p1, p2, p4, p3}, Lcom/mycompany/app/setting/SettingInfo;->P0(Ljava/lang/String;IZ)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->c4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    sget p4, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    const-string p2, "Copied text"

    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
