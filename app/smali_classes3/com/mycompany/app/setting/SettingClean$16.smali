.class Lcom/mycompany/app/setting/SettingClean$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$16;->b:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingClean$16;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$16;->b:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 6

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingClean$16;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$16;->b:Lcom/mycompany/app/setting/SettingClean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, p2, :cond_2

    .line 13
    .line 14
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 15
    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 29
    .line 30
    const-string p2, ""

    .line 31
    .line 32
    sput-object p2, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefSecret;->t(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    sget-object v0, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 44
    .line 45
    aget p1, v0, p1

    .line 46
    .line 47
    const/16 v0, 0x11

    .line 48
    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    const/4 p2, 0x3

    .line 54
    const-string v2, "EXTRA_TYPE"

    .line 55
    .line 56
    const-string v3, "EXTRA_PASS"

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    sget v5, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 62
    .line 63
    if-ne v5, p1, :cond_4

    .line 64
    .line 65
    :cond_3
    :goto_0
    return v1

    .line 66
    :cond_4
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingClean;->t2:Z

    .line 67
    .line 68
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_5
    iget-object v5, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v5, p1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 97
    .line 98
    .line 99
    return v1
.end method
