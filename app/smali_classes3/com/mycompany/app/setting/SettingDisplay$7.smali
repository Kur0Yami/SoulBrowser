.class Lcom/mycompany/app/setting/SettingDisplay$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDisplay;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x2

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    iget p2, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->a:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/16 v2, 0xe

    .line 17
    .line 18
    iget v3, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->b:I

    .line 19
    .line 20
    iget-object v4, p0, Lcom/mycompany/app/setting/SettingDisplay$7;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 21
    .line 22
    if-ne v3, v0, :cond_1

    .line 23
    .line 24
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 25
    .line 26
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5, v0}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sput-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    iget-object v5, v4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 37
    .line 38
    const-string v6, "mThemeUi"

    .line 39
    .line 40
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 41
    .line 42
    invoke-static {v5, v2, v7, v6}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5, v1}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    sput-boolean v5, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 57
    .line 58
    iget-object v5, v4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 59
    .line 60
    const-string v6, "mThemeWeb"

    .line 61
    .line 62
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 63
    .line 64
    invoke-static {v5, v2, v7, v6}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f7()V

    .line 68
    .line 69
    .line 70
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 71
    .line 72
    if-ne p2, v2, :cond_3

    .line 73
    .line 74
    iget-object p2, v4, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    sget-object v2, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 79
    .line 80
    aget p1, v2, p1

    .line 81
    .line 82
    invoke-virtual {p2, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {v4, p1, v1}, Lcom/mycompany/app/setting/SettingActivity;->I0(IZ)V

    .line 90
    .line 91
    .line 92
    return v0

    .line 93
    :cond_3
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 94
    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    :goto_1
    return v0

    .line 98
    :cond_4
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$7$1;

    .line 99
    .line 100
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingDisplay$7$1;-><init>(Lcom/mycompany/app/setting/SettingDisplay$7;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return v0
.end method
