.class public Lcom/mycompany/app/dialog/DialogSetVpn;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic p0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRecyclerView;

.field public f0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public g0:I

.field public h0:Lcom/mycompany/app/view/MyPopupMenu;

.field public i0:Lcom/mycompany/app/view/MyPopupMenu;

.field public j0:[Ljava/lang/String;

.field public k0:[Ljava/lang/String;

.field public l0:Lcom/mycompany/app/dialog/DialogEditVpn;

.field public m0:Lcom/mycompany/app/dialog/DialogWebView;

.field public n0:Z

.field public o0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->c0:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetVpn$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetVpn$1;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetVpn;Landroid/view/View;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVpn;->E()V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_8

    .line 17
    .line 18
    iget-object p2, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 19
    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 25
    .line 26
    const/16 v0, 0x12

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    array-length p2, p2

    .line 31
    if-eq p2, v0, :cond_4

    .line 32
    .line 33
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    sget v1, Lnet/kaki87/soul2/testing/R$array;->names:I

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 46
    .line 47
    if-eqz p2, :cond_8

    .line 48
    .line 49
    array-length p2, p2

    .line 50
    if-eq p2, v0, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 p2, 0x10

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p3, :cond_5

    .line 57
    .line 58
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 59
    .line 60
    move v2, v1

    .line 61
    move v1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 64
    .line 65
    sub-int/2addr v1, p2

    .line 66
    const/4 v2, 0x2

    .line 67
    move v11, v1

    .line 68
    move v1, p2

    .line 69
    move p2, v2

    .line 70
    move v2, v11

    .line 71
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    move v3, v0

    .line 77
    :goto_1
    const/4 v10, 0x1

    .line 78
    if-ge v3, p2, :cond_7

    .line 79
    .line 80
    add-int v4, v3, v1

    .line 81
    .line 82
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 85
    .line 86
    aget-object v4, v6, v4

    .line 87
    .line 88
    if-ne v2, v3, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v10, v0

    .line 92
    :goto_2
    invoke-direct {v5, v4, v3, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 106
    .line 107
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 108
    .line 109
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetVpn$8;

    .line 110
    .line 111
    invoke-direct {v9, p0, p2, p3}, Lcom/mycompany/app/dialog/DialogSetVpn$8;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;IZ)V

    .line 112
    .line 113
    .line 114
    move-object v6, p1

    .line 115
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 116
    .line 117
    .line 118
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 119
    .line 120
    iput v10, v3, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 121
    .line 122
    iput-object v3, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 123
    .line 124
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 24
    .line 25
    if-ltz v0, :cond_6

    .line 26
    .line 27
    const/16 v2, 0x12

    .line 28
    .line 29
    if-lt v0, v2, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    if-eq v0, v2, :cond_4

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v3, Lnet/kaki87/soul2/testing/R$array;->names:I

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    array-length v0, v0

    .line 56
    if-eq v0, v2, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 60
    .line 61
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 62
    .line 63
    aget-object v0, v0, v1

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_5
    :goto_0
    return-object v1

    .line 67
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 68
    sput v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 71
    .line 72
    sget v1, Lnet/kaki87/soul2/testing/R$string;->name0:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 22
    .line 23
    if-ltz v0, :cond_6

    .line 24
    .line 25
    const/16 v2, 0x12

    .line 26
    .line 27
    if-lt v0, v2, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->k0:[Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    array-length v0, v0

    .line 35
    if-eq v0, v2, :cond_4

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget v3, Lnet/kaki87/soul2/testing/R$array;->server_websites:I

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->k0:[Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    array-length v0, v0

    .line 54
    if-eq v0, v2, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->k0:[Ljava/lang/String;

    .line 58
    .line 59
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 60
    .line 61
    aget-object v0, v0, v1

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_5
    :goto_0
    return-object v1

    .line 65
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 66
    sput v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 69
    .line 70
    sget v1, Lnet/kaki87/soul2/testing/R$string;->website0:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final F(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->g0:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->g0:I

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
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 40
    .line 41
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 42
    .line 43
    invoke-virtual {p1, v1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->A(IZ)V

    .line 44
    .line 45
    .line 46
    :cond_4
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->g0:I

    .line 47
    .line 48
    if-ne p1, v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/mycompany/app/dialog/DialogSetVpn;->G(Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_5
    if-ne p1, v0, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogSetVpn;->G(Z)V

    .line 57
    .line 58
    .line 59
    if-eqz p2, :cond_8

    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 62
    .line 63
    sget p2, Lnet/kaki87/soul2/testing/R$string;->vpn_active:I

    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    const/4 p2, 0x3

    .line 70
    if-ne p1, p2, :cond_7

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/mycompany/app/dialog/DialogSetVpn;->G(Z)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_7
    if-nez p1, :cond_8

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogSetVpn;->G(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->U()V

    .line 90
    .line 91
    .line 92
    :cond_8
    :goto_2
    return-void
.end method

.method public final G(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->n0:Z

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->B(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->n0:Z

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->o0:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetVpn$5;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetVpn$5;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v1, 0x3e8

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/main/MainApp;->K:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVpn;->E()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->l0:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->dismiss()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->l0:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 77
    .line 78
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->c0:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->j0:[Ljava/lang/String;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn;->k0:[Ljava/lang/String;

    .line 87
    .line 88
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
