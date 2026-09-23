.class Lcom/mycompany/app/setting/SettingClean$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$3;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->p:Z

    .line 2
    .line 3
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingClean$3;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sput-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->p:Z

    .line 9
    .line 10
    iget-object v0, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 11
    .line 12
    const-string v3, "mNotiClea2"

    .line 13
    .line 14
    invoke-static {v1, v0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, v2, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iput-object v3, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 35
    .line 36
    .line 37
    iput-object v3, v2, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 38
    .line 39
    :cond_2
    if-nez p1, :cond_3

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 48
    .line 49
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ads_block:I

    .line 50
    .line 51
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    sget v3, Lnet/kaki87/soul2/testing/R$string;->check_element:I

    .line 61
    .line 62
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    sget v3, Lnet/kaki87/soul2/testing/R$string;->block_area:I

    .line 72
    .line 73
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    sget v3, Lnet/kaki87/soul2/testing/R$string;->over_block:I

    .line 83
    .line 84
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 91
    .line 92
    iget-object v3, v2, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 93
    .line 94
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 95
    .line 96
    new-instance v7, Lcom/mycompany/app/setting/SettingClean$7;

    .line 97
    .line 98
    invoke-direct {v7, v2}, Lcom/mycompany/app/setting/SettingClean$7;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 99
    .line 100
    .line 101
    move-object v4, p1

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 106
    .line 107
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 108
    .line 109
    return-void
.end method
