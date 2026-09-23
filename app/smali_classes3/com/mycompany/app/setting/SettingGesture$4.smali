.class Lcom/mycompany/app/setting/SettingGesture$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingGesture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingGesture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingGesture$4;->a:Lcom/mycompany/app/setting/SettingGesture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingGesture;->Z1:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingGesture$4;->a:Lcom/mycompany/app/setting/SettingGesture;

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    if-eq p2, p4, :cond_7

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p2, v0, :cond_6

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    if-eq p2, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    if-eq p2, v0, :cond_1

    .line 22
    .line 23
    const/16 p1, 0x9

    .line 24
    .line 25
    if-eq p2, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->E:Z

    .line 29
    .line 30
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    const/16 p2, 0xe

    .line 33
    .line 34
    const-string p4, "mTabMulti"

    .line 35
    .line 36
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz p3, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 54
    .line 55
    :cond_3
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 58
    .line 59
    if-nez p3, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->do_change:I

    .line 71
    .line 72
    invoke-direct {p3, v0, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 79
    .line 80
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 81
    .line 82
    invoke-direct {p3, p4, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 89
    .line 90
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 93
    .line 94
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 95
    .line 96
    new-instance v6, Lcom/mycompany/app/setting/SettingGesture$5;

    .line 97
    .line 98
    invoke-direct {v6, v1, p2}, Lcom/mycompany/app/setting/SettingGesture$5;-><init>(Lcom/mycompany/app/setting/SettingGesture;I)V

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingGesture;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 105
    .line 106
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 107
    .line 108
    :cond_5
    :goto_0
    return-void

    .line 109
    :cond_6
    new-instance p1, Landroid/content/Intent;

    .line 110
    .line 111
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 112
    .line 113
    const-class p3, Lcom/mycompany/app/setting/SettingSense;

    .line 114
    .line 115
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 123
    .line 124
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 125
    .line 126
    const-class p3, Lcom/mycompany/app/setting/SettingSwipe;

    .line 127
    .line 128
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
