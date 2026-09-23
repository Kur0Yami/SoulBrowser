.class Lcom/mycompany/app/setting/SettingSecure$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingSecure;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecure;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecure$9;->b:Lcom/mycompany/app/setting/SettingSecure;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingSecure$9;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure$9;->b:Lcom/mycompany/app/setting/SettingSecure;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 11

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingSecure$9;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure$9;->b:Lcom/mycompany/app/setting/SettingSecure;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "EXTRA_TYPE"

    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    return p2

    .line 33
    :cond_1
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 34
    .line 35
    if-ne v2, p1, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    if-ne p1, v1, :cond_3

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v1, p2}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    sput-object v1, Lcom/mycompany/app/pref/PrefSecret;->t:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefSecret;->u(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    move v8, p2

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v2, 0x0

    .line 71
    move v8, v2

    .line 72
    :goto_1
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 73
    .line 74
    aget p1, v2, p1

    .line 75
    .line 76
    const/4 v2, 0x6

    .line 77
    invoke-virtual {v1, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 81
    .line 82
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 83
    .line 84
    sget v5, Lnet/kaki87/soul2/testing/R$string;->only_secret:I

    .line 85
    .line 86
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v4, 0x7

    .line 90
    const/4 v6, 0x0

    .line 91
    move v9, v8

    .line 92
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 99
    .line 100
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 101
    .line 102
    sget v1, Lnet/kaki87/soul2/testing/R$string;->lock_reset_target:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    sget v1, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingSecure;->Q0()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingSecure;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    const/4 v6, 0x2

    .line 121
    const/16 v5, 0x8

    .line 122
    .line 123
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_2
    return p2
.end method
