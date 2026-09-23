.class public Lcom/mycompany/app/setting/SettingVpn;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic j2:I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/view/MyCoverView;

.field public Z1:I

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/view/MyPopupMenu;

.field public c2:[Ljava/lang/String;

.field public d2:[Ljava/lang/String;

.field public e2:Lcom/mycompany/app/dialog/DialogEditVpn;

.field public f2:Lcom/mycompany/app/dialog/DialogWebView;

.field public g2:Z

.field public h2:Z

.field public i2:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O0(Lcom/mycompany/app/setting/SettingVpn;Landroid/view/View;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVpn;->R0()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_7

    .line 11
    .line 12
    iget-object p2, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 19
    .line 20
    const/16 v0, 0x12

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    array-length p2, p2

    .line 25
    if-eq p2, v0, :cond_3

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget v1, Lnet/kaki87/soul2/testing/R$array;->names:I

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p2, :cond_7

    .line 40
    .line 41
    array-length p2, p2

    .line 42
    if-eq p2, v0, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    const/16 p2, 0x10

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p3, :cond_4

    .line 49
    .line 50
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 51
    .line 52
    move v2, v1

    .line 53
    move v1, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 56
    .line 57
    sub-int/2addr v1, p2

    .line 58
    const/4 v2, 0x2

    .line 59
    move v11, v1

    .line 60
    move v1, p2

    .line 61
    move p2, v2

    .line 62
    move v2, v11

    .line 63
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    move v3, v0

    .line 69
    :goto_1
    const/4 v10, 0x1

    .line 70
    if-ge v3, p2, :cond_6

    .line 71
    .line 72
    add-int v4, v3, v1

    .line 73
    .line 74
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 77
    .line 78
    aget-object v4, v6, v4

    .line 79
    .line 80
    if-ne v2, v3, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move v10, v0

    .line 84
    :goto_2
    invoke-direct {v5, v4, v3, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 96
    .line 97
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 98
    .line 99
    new-instance v9, Lcom/mycompany/app/setting/SettingVpn$6;

    .line 100
    .line 101
    invoke-direct {v9, p0, p2, p3}, Lcom/mycompany/app/setting/SettingVpn$6;-><init>(Lcom/mycompany/app/setting/SettingVpn;IZ)V

    .line 102
    .line 103
    .line 104
    move-object v4, p0

    .line 105
    move-object v6, p1

    .line 106
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 107
    .line 108
    .line 109
    iput-object v3, v4, Lcom/mycompany/app/setting/SettingVpn;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 110
    .line 111
    iput v10, v3, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 112
    .line 113
    iput-object v3, v4, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 114
    .line 115
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/mycompany/app/setting/SettingVpn;->Q0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    new-instance v8, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    invoke-direct {v0, v9, v1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 25
    .line 26
    sget v12, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 27
    .line 28
    sget v13, Lnet/kaki87/soul2/testing/R$string;->not_support_locale:I

    .line 29
    .line 30
    sget-boolean v15, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 31
    .line 32
    const/16 v16, 0x1

    .line 33
    .line 34
    const/4 v14, 0x3

    .line 35
    const/4 v11, 0x1

    .line 36
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-direct {v0, v1, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 52
    .line 53
    sget v12, Lnet/kaki87/soul2/testing/R$string;->vpn_server:I

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/mycompany/app/setting/SettingVpn;->P0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x1

    .line 61
    const/4 v11, 0x3

    .line 62
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v7, 0x2

    .line 74
    const/4 v1, 0x4

    .line 75
    move v6, v5

    .line 76
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x5

    .line 80
    invoke-static {v8, v0, v1, v9}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 81
    .line 82
    .line 83
    return-object v8
.end method

.method public final P0()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 18
    .line 19
    if-ltz v0, :cond_5

    .line 20
    .line 21
    const/16 v1, 0x12

    .line 22
    .line 23
    if-lt v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$array;->names:I

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-eq v0, v1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 52
    .line 53
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 54
    .line 55
    aget-object v0, v0, v1

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 59
    return-object v0

    .line 60
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 61
    sput v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 62
    .line 63
    sget v0, Lnet/kaki87/soul2/testing/R$string;->name0:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 16
    .line 17
    if-ltz v0, :cond_5

    .line 18
    .line 19
    const/16 v1, 0x12

    .line 20
    .line 21
    if-lt v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->d2:[Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    array-length v0, v0

    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$array;->server_websites:I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->d2:[Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    array-length v0, v0

    .line 46
    if-eq v0, v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->d2:[Ljava/lang/String;

    .line 50
    .line 51
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 52
    .line 53
    aget-object v0, v0, v1

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 57
    return-object v0

    .line 58
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 60
    .line 61
    sget v0, Lnet/kaki87/soul2/testing/R$string;->website0:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public final R0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final S0(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/setting/SettingVpn;->Z1:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/setting/SettingVpn;->Z1:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p1, v2, :cond_3

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    move p1, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    move p1, v2

    .line 24
    :goto_1
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 25
    .line 26
    if-eq v3, p1, :cond_4

    .line 27
    .line 28
    sput-boolean p1, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 29
    .line 30
    iget-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    const-string v5, "mVpnMode"

    .line 35
    .line 36
    invoke-static {v4, v3, v5, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 40
    .line 41
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 42
    .line 43
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->A(IZ)V

    .line 44
    .line 45
    .line 46
    :cond_4
    iget p1, p0, Lcom/mycompany/app/setting/SettingVpn;->Z1:I

    .line 47
    .line 48
    if-ne p1, v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/mycompany/app/setting/SettingVpn;->U0(Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_5
    if-ne p1, v0, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingVpn;->U0(Z)V

    .line 57
    .line 58
    .line 59
    if-eqz p2, :cond_8

    .line 60
    .line 61
    sget p1, Lnet/kaki87/soul2/testing/R$string;->vpn_active:I

    .line 62
    .line 63
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_6
    const/4 p2, 0x3

    .line 68
    if-ne p1, p2, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/mycompany/app/setting/SettingVpn;->U0(Z)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_7
    if-nez p1, :cond_8

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingVpn;->U0(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_8

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->U()V

    .line 88
    .line 89
    .line 90
    :cond_8
    :goto_2
    return-void
.end method

.method public final T0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->K:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p1, Lcom/mycompany/app/setting/SettingVpn$4;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingVpn$4;-><init>(Lcom/mycompany/app/setting/SettingVpn;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->K:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingVpn;->i2:Z

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->I:Lcom/mycompany/app/vpn/VpnSvc;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget p1, p1, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move p1, v1

    .line 36
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/setting/SettingVpn;->S0(IZ)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingVpn;->i2:Z

    .line 40
    .line 41
    return-void
.end method

.method public final U0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingVpn;->g2:Z

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->B(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingVpn;->g2:Z

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingVpn;->h2:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/setting/SettingVpn$3;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingVpn$3;-><init>(Lcom/mycompany/app/setting/SettingVpn;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v1, 0x3e8

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingVpn;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_1
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 p3, 0x22

    .line 2
    .line 3
    if-eq p1, p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingVpn;->h2:Z

    .line 8
    .line 9
    const/4 p3, -0x1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, p3, :cond_2

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingVpn;->i2:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->T()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void

    .line 27
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/setting/SettingVpn;->S0(IZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingVpn;->X1:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/16 v0, 0x22

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 11
    .line 12
    .line 13
    sget p1, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 17
    .line 18
    .line 19
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 20
    .line 21
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingVpn$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingVpn$1;-><init>(Lcom/mycompany/app/setting/SettingVpn;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingVpn;->T0(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 17
    .line 18
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->c2:[Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->d2:[Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingVpn;->T0(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVpn;->R0()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->e2:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->dismiss()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->e2:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->V()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingVpn;->X1:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingVpn;->T0(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->X()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingVpn;->X1:Z

    .line 20
    .line 21
    return-void
.end method
