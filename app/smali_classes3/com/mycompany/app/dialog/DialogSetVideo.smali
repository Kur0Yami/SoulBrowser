.class public Lcom/mycompany/app/dialog/DialogSetVideo;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic v0:I


# instance fields
.field public a0:Lcom/mycompany/app/setting/SettingMedia;

.field public b0:Landroid/content/Context;

.field public final c0:Z

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRoundLinear;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyButtonImage;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Lcom/mycompany/app/view/MyRecyclerView;

.field public k0:Lcom/mycompany/app/view/MyLineText;

.field public l0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public m0:Lcom/mycompany/app/view/MyPopupMenu;

.field public n0:Lcom/mycompany/app/dialog/DialogSetDown;

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMedia;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->c0:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->s:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 19
    .line 20
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->t:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->r0:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 28
    .line 29
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->p0:Z

    .line 32
    .line 33
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->q0:Z

    .line 36
    .line 37
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 40
    .line 41
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->t0:Ljava/lang/String;

    .line 44
    .line 45
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->u0:Ljava/lang/String;

    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetVideo$1;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetVideo$1;-><init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetVideo;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZ)V
    .locals 9

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_8

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p2, v1, :cond_7

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x5

    .line 13
    if-eq p2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->r0:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVideo;->D()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    if-eqz p2, :cond_4

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    iput-object p3, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 38
    .line 39
    .line 40
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    :cond_4
    if-eqz p1, :cond_6

    .line 43
    .line 44
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 45
    .line 46
    if-nez p2, :cond_5

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 55
    .line 56
    const/4 p3, 0x0

    .line 57
    sget v1, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 58
    .line 59
    invoke-direct {p2, p3, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 66
    .line 67
    sget p3, Lnet/kaki87/soul2/testing/R$string;->other_app:I

    .line 68
    .line 69
    invoke-direct {p2, v0, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 80
    .line 81
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 82
    .line 83
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 84
    .line 85
    new-instance v7, Lcom/mycompany/app/dialog/DialogSetVideo$14;

    .line 86
    .line 87
    invoke-direct {v7, p0}, Lcom/mycompany/app/dialog/DialogSetVideo$14;-><init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 96
    .line 97
    :cond_6
    :goto_0
    return-void

    .line 98
    :cond_7
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->q0:Z

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVideo;->D()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_8
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->p0:Z

    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 107
    .line 108
    if-eqz p1, :cond_a

    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_9

    .line 117
    .line 118
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 119
    .line 120
    :goto_1
    move-object v6, p1

    .line 121
    goto :goto_2

    .line 122
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 123
    .line 124
    sget p2, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_1

    .line 131
    :goto_2
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->p0:Z

    .line 132
    .line 133
    xor-int/lit8 v7, p1, 0x1

    .line 134
    .line 135
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 136
    .line 137
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 138
    .line 139
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video_player:I

    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v5, 0x1

    .line 143
    const/4 v2, 0x4

    .line 144
    move v8, v7

    .line 145
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;ZZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 149
    .line 150
    .line 151
    :cond_a
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVideo;->D()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_b
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVideo;->D()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogSetVideo;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->c0:Z

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->s:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->s:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "mYouPip"

    .line 18
    .line 19
    invoke-static {v1, v0, v3, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->t:Z

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->r0:Z

    .line 25
    .line 26
    if-eq v0, v2, :cond_8

    .line 27
    .line 28
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->t:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 31
    .line 32
    const-string v3, "mYouRate"

    .line 33
    .line 34
    invoke-static {v1, v0, v3, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 42
    .line 43
    if-eq v0, v2, :cond_2

    .line 44
    .line 45
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 48
    .line 49
    const-string v3, "mShowPip"

    .line 50
    .line 51
    invoke-static {v1, v0, v3, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->p0:Z

    .line 57
    .line 58
    if-eq v0, v2, :cond_3

    .line 59
    .line 60
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 63
    .line 64
    const-string v3, "mShowFull"

    .line 65
    .line 66
    invoke-static {v1, v0, v3, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->q0:Z

    .line 72
    .line 73
    if-eq v0, v2, :cond_4

    .line 74
    .line 75
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 78
    .line 79
    const-string v3, "mShowDown"

    .line 80
    .line 81
    invoke-static {v1, v0, v3, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    :cond_4
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->t0:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->u0:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_8

    .line 113
    .line 114
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->s0:Ljava/lang/String;

    .line 115
    .line 116
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->t0:Ljava/lang/String;

    .line 119
    .line 120
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->u0:Ljava/lang/String;

    .line 123
    .line 124
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 127
    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    const/4 v1, 0x0

    .line 132
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefAlbum;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefAlbum;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_7

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    const-string v1, "mPlayName2"

    .line 140
    .line 141
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->J:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "mPlayPkg2"

    .line 147
    .line 148
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v1, "mPlayCls2"

    .line 154
    .line 155
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 161
    .line 162
    .line 163
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetVideo;->dismiss()V

    .line 164
    .line 165
    .line 166
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->c0:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const v2, -0xe19938

    .line 10
    .line 11
    .line 12
    const v3, -0x50506

    .line 13
    .line 14
    .line 15
    const v4, -0x252526

    .line 16
    .line 17
    .line 18
    const v5, -0x7f7f80

    .line 19
    .line 20
    .line 21
    const/16 v6, 0x8

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    iget-boolean v8, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 29
    .line 30
    if-eqz v8, :cond_1

    .line 31
    .line 32
    move v8, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v8, v6

    .line 35
    :goto_0
    invoke-virtual {v0, v8}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    iget-boolean v8, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->r0:Z

    .line 41
    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    move v6, v7

    .line 45
    :cond_2
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->r0:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    move v4, v5

    .line 64
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 68
    .line 69
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 76
    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    move v2, v3

    .line 80
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    iget-boolean v8, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 92
    .line 93
    if-eqz v8, :cond_8

    .line 94
    .line 95
    move v8, v7

    .line 96
    goto :goto_2

    .line 97
    :cond_8
    move v8, v6

    .line 98
    :goto_2
    invoke-virtual {v0, v8}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    iget-boolean v8, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->p0:Z

    .line 104
    .line 105
    if-eqz v8, :cond_9

    .line 106
    .line 107
    move v8, v7

    .line 108
    goto :goto_3

    .line 109
    :cond_9
    move v8, v6

    .line 110
    :goto_3
    invoke-virtual {v0, v8}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    iget-boolean v8, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->q0:Z

    .line 116
    .line 117
    if-eqz v8, :cond_a

    .line 118
    .line 119
    move v6, v7

    .line 120
    :cond_a
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->o0:Z

    .line 124
    .line 125
    if-nez v0, :cond_d

    .line 126
    .line 127
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->p0:Z

    .line 128
    .line 129
    if-nez v0, :cond_d

    .line 130
    .line 131
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->q0:Z

    .line 132
    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 137
    .line 138
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 139
    .line 140
    if-eqz v1, :cond_c

    .line 141
    .line 142
    move v4, v5

    .line 143
    :cond_c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 147
    .line 148
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 153
    .line 154
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 155
    .line 156
    if-eqz v4, :cond_e

    .line 157
    .line 158
    move v2, v3

    .line 159
    :cond_e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->n0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->n0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->e0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->e0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 85
    .line 86
    if-eqz v0, :cond_9

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 94
    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 101
    .line 102
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 103
    .line 104
    if-eqz v0, :cond_b

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->l0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 110
    .line 111
    :cond_b
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->a0:Lcom/mycompany/app/setting/SettingMedia;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 114
    .line 115
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 116
    .line 117
    .line 118
    return-void
.end method
