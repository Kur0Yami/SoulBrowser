.class Lcom/mycompany/app/setting/SettingDisplay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$2;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$2;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->i2:Z

    .line 11
    .line 12
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingActivity;->H0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingDisplay$2$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingDisplay$2$1;-><init>(Lcom/mycompany/app/setting/SettingDisplay$2;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->l2:Z

    .line 34
    .line 35
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 36
    .line 37
    if-ne v0, v1, :cond_3

    .line 38
    .line 39
    iget v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->m2:I

    .line 40
    .line 41
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 42
    .line 43
    if-eq v0, v1, :cond_4

    .line 44
    .line 45
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 50
    .line 51
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->n2:I

    .line 57
    .line 58
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 59
    .line 60
    if-eq v0, v1, :cond_5

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 64
    .line 65
    .line 66
    :cond_5
    iget v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->o2:I

    .line 67
    .line 68
    sget v1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 69
    .line 70
    if-eq v0, v1, :cond_6

    .line 71
    .line 72
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->w7(Landroid/app/Activity;)V

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->I0(IZ)V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->j2:Z

    .line 84
    .line 85
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 86
    .line 87
    if-ne v0, v1, :cond_7

    .line 88
    .line 89
    iget v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->k2:I

    .line 90
    .line 91
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 92
    .line 93
    if-eq v0, v1, :cond_9

    .line 94
    .line 95
    :cond_7
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 96
    .line 97
    if-nez p1, :cond_8

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_8
    new-instance v0, Lcom/mycompany/app/setting/SettingDisplay$2$2;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :cond_9
    :goto_1
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay$2;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->i2:Z

    .line 6
    .line 7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 8
    .line 9
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->j2:Z

    .line 10
    .line 11
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 12
    .line 13
    iput v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->k2:I

    .line 14
    .line 15
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 16
    .line 17
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->l2:Z

    .line 18
    .line 19
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 20
    .line 21
    iput v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->m2:I

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 24
    .line 25
    iput v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->n2:I

    .line 26
    .line 27
    sget v0, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 28
    .line 29
    iput v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->o2:I

    .line 30
    .line 31
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingDisplay;->P0(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method
