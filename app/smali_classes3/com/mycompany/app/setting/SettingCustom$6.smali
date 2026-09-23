.class Lcom/mycompany/app/setting/SettingCustom$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCustom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$6;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom$6;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 11

    .line 1
    const/4 p1, 0x2

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom$6;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p2, p1, :cond_3

    .line 6
    .line 7
    sget-object p1, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingCustom;->R0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingCustom;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, v0, Lcom/mycompany/app/setting/SettingCustom;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 25
    .line 26
    :cond_1
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 27
    .line 28
    if-gtz p1, :cond_2

    .line 29
    .line 30
    const/16 p1, 0x14

    .line 31
    .line 32
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 33
    .line 34
    new-instance v2, Lcom/mycompany/app/setting/SettingCustom$11;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingCustom$11;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x7

    .line 40
    invoke-direct {p2, v0, v3, p1, v2}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, v0, Lcom/mycompany/app/setting/SettingCustom;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 44
    .line 45
    new-instance p1, Lcom/mycompany/app/setting/SettingCustom$12;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/mycompany/app/setting/SettingCustom$12;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    if-ne p2, v1, :cond_4

    .line 55
    .line 56
    const/4 p2, -0x1

    .line 57
    :cond_4
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 58
    .line 59
    if-ne p1, p2, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    sput p2, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 63
    .line 64
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 65
    .line 66
    const/16 v2, 0x10

    .line 67
    .line 68
    const-string v3, "mRecentLimit"

    .line 69
    .line 70
    invoke-static {p1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-boolean v1, p1, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 80
    .line 81
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 82
    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 86
    .line 87
    if-nez v2, :cond_6

    .line 88
    .line 89
    move v8, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_6
    const/4 v2, 0x0

    .line 92
    move v8, v2

    .line 93
    :goto_0
    sget-object v2, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 94
    .line 95
    invoke-virtual {v0, p2}, Lcom/mycompany/app/setting/SettingCustom;->P0(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const/16 v2, 0xa

    .line 100
    .line 101
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 105
    .line 106
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 107
    .line 108
    sget v5, Lnet/kaki87/soul2/testing/R$string;->recent_secret:I

    .line 109
    .line 110
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 111
    .line 112
    const/4 v10, 0x2

    .line 113
    const/16 v4, 0xb

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    move v9, v8

    .line 117
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_1
    return v1
.end method
