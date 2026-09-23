.class Lcom/mycompany/app/setting/SettingQuick$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingQuick$5;->a:Lcom/mycompany/app/setting/SettingQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingQuick;->e2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingQuick$5;->a:Lcom/mycompany/app/setting/SettingQuick;

    .line 4
    .line 5
    const/16 p4, 0x11

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p2, v0, :cond_6

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p2, v1, :cond_5

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p2, v0, :cond_4

    .line 15
    .line 16
    const/4 p3, 0x5

    .line 17
    if-eq p2, p3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingQuick;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingQuick;->Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    if-eqz p2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetColumn;->dismiss()V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingQuick;->Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 37
    .line 38
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 39
    .line 40
    const/4 p3, 0x0

    .line 41
    invoke-direct {p2, p1, p3}, Lcom/mycompany/app/dialog/DialogSetColumn;-><init>(Lcom/mycompany/app/main/MainActivity;Z)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingQuick;->Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 45
    .line 46
    new-instance p3, Lcom/mycompany/app/setting/SettingQuick$7;

    .line 47
    .line 48
    invoke-direct {p3, p1}, Lcom/mycompany/app/setting/SettingQuick$7;-><init>(Lcom/mycompany/app/setting/SettingQuick;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 58
    .line 59
    const-string p2, "mQuickPlus"

    .line 60
    .line 61
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    xor-int/lit8 p2, p3, 0x1

    .line 66
    .line 67
    sput-boolean p2, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 68
    .line 69
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 70
    .line 71
    const/4 p3, 0x7

    .line 72
    const-string p4, "mQuickSmall"

    .line 73
    .line 74
    invoke-static {p3, p1, p4, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_6
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 79
    .line 80
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 81
    .line 82
    const-string p2, "mQuickUse"

    .line 83
    .line 84
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
