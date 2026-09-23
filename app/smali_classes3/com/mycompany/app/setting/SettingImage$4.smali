.class Lcom/mycompany/app/setting/SettingImage$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingImage$4;->a:Lcom/mycompany/app/setting/SettingImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingImage;->Z1:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImage$4;->a:Lcom/mycompany/app/setting/SettingImage;

    .line 4
    .line 5
    const/4 p4, 0x3

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_a

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p2, v2, :cond_9

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p2, v2, :cond_8

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq p2, v2, :cond_7

    .line 17
    .line 18
    const/4 p3, 0x7

    .line 19
    const/16 v2, 0x9

    if-eq p2, v2, :cond_pdf_timeout

    if-eq p2, p3, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_pdf_timeout
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz p2, :cond_pdf_timeout_open

    goto :goto_2

    :cond_pdf_timeout_open
    if-eqz p1, :cond_pdf_timeout_done

    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    if-nez p2, :cond_pdf_timeout_anchor

    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyRoundItem;

    :cond_pdf_timeout_anchor
    if-eqz p2, :cond_pdf_timeout_done

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    sget v3, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout_disabled:I

    sget v5, Lcom/mycompany/app/pref/PrefImage;->J:I

    if-nez v5, :cond_pdf_menu_disabled

    const/4 v5, 0x1

    goto :cond_pdf_menu_disabled_done

    :cond_pdf_menu_disabled
    const/4 v5, 0x0

    :cond_pdf_menu_disabled_done
    const/4 p4, 0x0

    invoke-direct {v2, p4, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    sget v3, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout_default:I

    sget v5, Lcom/mycompany/app/pref/PrefImage;->J:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_pdf_menu_default

    const/4 v5, 0x1

    goto :cond_pdf_menu_default_done

    :cond_pdf_menu_default
    const/4 v5, 0x0

    :cond_pdf_menu_default_done
    const/4 p4, 0x1

    invoke-direct {v2, p4, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    move-object v3, p2

    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    new-instance v6, Lcom/mycompany/app/setting/SettingImage$6;

    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingImage$6;-><init>(Lcom/mycompany/app/setting/SettingImage;)V

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    iput-object v0, v1, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    :cond_pdf_timeout_done
    goto :goto_2

    :cond_0
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    if-eqz p2, :cond_2

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    iput-object p3, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 33
    .line 34
    .line 35
    iput-object p3, v1, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 36
    .line 37
    :cond_2
    if-eqz p1, :cond_6

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 40
    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object p2, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 50
    .line 51
    array-length p2, p2

    .line 52
    const/4 p3, 0x0

    .line 53
    move p4, p3

    .line 54
    :goto_0
    if-ge p4, p2, :cond_5

    .line 55
    .line 56
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 57
    .line 58
    sget-object v3, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 59
    .line 60
    aget v3, v3, p4

    .line 61
    .line 62
    sget v5, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 63
    .line 64
    if-ne v5, p4, :cond_4

    .line 65
    .line 66
    move v5, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v5, p3

    .line 69
    :goto_1
    invoke-direct {v2, p4, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 p4, p4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 79
    .line 80
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 83
    .line 84
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 85
    .line 86
    new-instance v6, Lcom/mycompany/app/setting/SettingImage$5;

    .line 87
    .line 88
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingImage$5;-><init>(Lcom/mycompany/app/setting/SettingImage;)V

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 95
    .line 96
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 97
    .line 98
    :cond_6
    :goto_2
    return-void

    .line 99
    :cond_7
    sput-boolean p3, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 100
    .line 101
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 102
    .line 103
    const-string p2, "mVolTurn"

    .line 104
    .line 105
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    new-instance p1, Landroid/content/Intent;

    .line 110
    .line 111
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 112
    .line 113
    const-class p3, Lcom/mycompany/app/setting/SettingImageTap;

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
    :cond_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefImage;->n:Z

    .line 123
    .line 124
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 125
    .line 126
    const-string p2, "mShowGuide"

    .line 127
    .line 128
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_a
    sput-boolean p3, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 133
    .line 134
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 135
    .line 136
    const-string p2, "mShowThumb"

    .line 137
    .line 138
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
