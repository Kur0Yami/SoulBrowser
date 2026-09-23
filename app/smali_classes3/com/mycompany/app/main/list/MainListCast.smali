.class public Lcom/mycompany/app/main/list/MainListCast;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/list/MainListCast$CastTask;
    }
.end annotation


# static fields
.field public static final synthetic N1:I


# instance fields
.field public C1:Z

.field public D1:Z

.field public E1:Z

.field public F1:Z

.field public G1:Lcom/mycompany/app/view/MyMainRelative;

.field public H1:Lcom/mycompany/app/main/MainListView;

.field public I1:Lcom/mycompany/app/view/MyButtonText;

.field public J1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public K1:Z

.field public L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

.field public M1:Lcom/mycompany/app/main/MainListView$ListViewHolder;


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

.method public static D0(Lcom/mycompany/app/main/list/MainListCast;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 12
    .line 13
    const-class v3, Lcom/mycompany/app/setting/SettingCast;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p1, "EXTRA_NOTI"

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string p1, "EXTRA_INDEX"

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final E0(Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "EXTRA_SHORT"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/main/list/MainListCast;->D1:Z

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    sget p1, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/mycompany/app/pref/PrefAlbum;->s(Landroid/content/Context;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/mycompany/app/pref/PrefImage;->s(Landroid/content/Context;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/mycompany/app/pref/PrefList;->s(Landroid/content/Context;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/mycompany/app/pref/PrefPath;->s(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->z6()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainApp;->p:Z

    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method public final F0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->J1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->J1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_8

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_3

    .line 35
    .line 36
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    sget p3, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    const/4 v1, 0x6

    .line 46
    if-ne p3, v0, :cond_4

    .line 47
    .line 48
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->w:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-nez p3, :cond_6

    .line 55
    .line 56
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p3}, Lcom/mycompany/app/data/DataCast;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p3}, Lcom/mycompany/app/data/DataList;->j()V

    .line 63
    .line 64
    .line 65
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->w:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 68
    .line 69
    const-string v0, "mScanImage"

    .line 70
    .line 71
    invoke-static {v1, p3, v0, p2}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    if-ne p3, v1, :cond_5

    .line 76
    .line 77
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->y:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_6

    .line 84
    .line 85
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p3}, Lcom/mycompany/app/data/DataCast;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p3}, Lcom/mycompany/app/data/DataList;->j()V

    .line 92
    .line 93
    .line 94
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->y:Ljava/lang/String;

    .line 95
    .line 96
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 97
    .line 98
    const-string v0, "mScanMusic"

    .line 99
    .line 100
    invoke-static {v1, p3, v0, p2}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->x:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-nez p3, :cond_6

    .line 111
    .line 112
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {p3}, Lcom/mycompany/app/data/DataCast;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p3}, Lcom/mycompany/app/data/DataList;->j()V

    .line 119
    .line 120
    .line 121
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->x:Ljava/lang/String;

    .line 122
    .line 123
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 124
    .line 125
    const-string v0, "mScanVideo"

    .line 126
    .line 127
    invoke-static {v1, p3, v0, p2}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 131
    .line 132
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/mycompany/app/main/list/MainListCast;->F1:Z

    .line 137
    .line 138
    iput-boolean p1, p0, Lcom/mycompany/app/main/list/MainListCast;->K1:Z

    .line 139
    .line 140
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->P()V

    .line 145
    .line 146
    .line 147
    :cond_7
    sget p1, Lnet/kaki87/soul2/testing/R$string;->dir_scanning:I

    .line 148
    .line 149
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 150
    .line 151
    .line 152
    :cond_8
    :goto_1
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListCast;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListCast;->G1:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    const v0, -0x70708

    .line 18
    .line 19
    .line 20
    const/high16 v1, -0x1000000

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move v3, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v0

    .line 35
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    const v0, -0x50506

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 53
    .line 54
    const v0, -0xd8d8d9

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 65
    .line 66
    const/high16 v1, 0x21000000

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListCast;->C1:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/list/MainListCast;->E0(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/mycompany/app/main/list/MainListCast;->D1:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->x(Landroid/content/res/Resources;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/16 v2, 0x13

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 34
    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$id;->list_title_text:I

    .line 37
    .line 38
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 39
    .line 40
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 41
    .line 42
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 43
    .line 44
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 45
    .line 46
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    const/4 v9, -0x1

    .line 52
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v8, Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const/4 v10, 0x2

    .line 64
    invoke-static {v9, v9, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    new-instance v11, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 72
    .line 73
    invoke-direct {v11, v0}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v3}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    invoke-virtual {v11, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 90
    .line 91
    .line 92
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 93
    .line 94
    invoke-direct {v13, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v13}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 106
    .line 107
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    .line 109
    invoke-virtual {v8, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v13, Lcom/mycompany/app/view/MyScrollBar;

    .line 113
    .line 114
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 118
    .line 119
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 120
    .line 121
    iput v14, v13, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 122
    .line 123
    iput v15, v13, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 124
    .line 125
    const/4 v14, 0x4

    .line 126
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .line 131
    move/from16 p1, v10

    .line 132
    .line 133
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 134
    .line 135
    invoke-direct {v15, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    .line 137
    .line 138
    const v10, 0x800005

    .line 139
    .line 140
    .line 141
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    .line 143
    invoke-virtual {v8, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    new-instance v15, Lcom/mycompany/app/view/MyFadeImage;

    .line 147
    .line 148
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 152
    .line 153
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    .line 155
    .line 156
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 157
    .line 158
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    .line 160
    .line 161
    const/16 v10, 0x8

    .line 162
    .line 163
    invoke-virtual {v15, v10}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 172
    .line 173
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 174
    .line 175
    invoke-virtual {v8, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    new-instance v3, Lcom/mycompany/app/view/MyButtonText;

    .line 179
    .line 180
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 184
    .line 185
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 186
    .line 187
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 188
    .line 189
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 190
    .line 191
    invoke-virtual {v3, v12, v9, v10, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 192
    .line 193
    .line 194
    const/16 v1, 0x11

    .line 195
    .line 196
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    .line 198
    .line 199
    const/high16 v9, 0x41600000    # 14.0f

    .line 200
    .line 201
    const/4 v10, 0x1

    .line 202
    invoke-virtual {v3, v10, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 203
    .line 204
    .line 205
    sget v12, Lnet/kaki87/soul2/testing/R$string;->select_dir:I

    .line 206
    .line 207
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    .line 208
    .line 209
    .line 210
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 211
    .line 212
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 219
    .line 220
    .line 221
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 222
    .line 223
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 224
    .line 225
    .line 226
    const/16 v10, 0x8

    .line 227
    .line 228
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .line 233
    const/4 v12, -0x2

    .line 234
    const/4 v9, -0x1

    .line 235
    invoke-direct {v10, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    const/16 v9, 0x50

    .line 239
    .line 240
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    .line 242
    const/high16 v9, 0x41a00000    # 20.0f

    .line 243
    .line 244
    invoke-static {v0, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    float-to-int v9, v9

    .line 249
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 250
    .line 251
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    new-instance v9, Lcom/mycompany/app/view/MyCoverView;

    .line 261
    .line 262
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 263
    .line 264
    .line 265
    const/16 v10, 0x8

    .line 266
    .line 267
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 271
    .line 272
    const/4 v1, -0x1

    .line 273
    invoke-direct {v10, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 274
    .line 275
    .line 276
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 277
    .line 278
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 279
    .line 280
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    new-instance v10, Lcom/mycompany/app/view/MyHeaderView;

    .line 284
    .line 285
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 289
    .line 290
    invoke-virtual {v8, v10, v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 291
    .line 292
    .line 293
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 294
    .line 295
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 299
    .line 300
    .line 301
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 302
    .line 303
    move-object/from16 v19, v9

    .line 304
    .line 305
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 306
    .line 307
    move-object/from16 v20, v15

    .line 308
    .line 309
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 310
    .line 311
    invoke-direct {v12, v9, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .line 313
    .line 314
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 315
    .line 316
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    .line 321
    .line 322
    new-instance v9, Lcom/mycompany/app/view/MyButtonRelative;

    .line 323
    .line 324
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 328
    .line 329
    div-int/lit8 v12, v12, 0x2

    .line 330
    .line 331
    const/4 v15, 0x0

    .line 332
    invoke-virtual {v9, v12, v15}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 333
    .line 334
    .line 335
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    .line 337
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 338
    .line 339
    move-object/from16 v21, v1

    .line 340
    .line 341
    const/4 v1, -0x1

    .line 342
    invoke-direct {v12, v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .line 344
    .line 345
    const/16 v1, 0x10

    .line 346
    .line 347
    invoke-virtual {v12, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 348
    .line 349
    .line 350
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 351
    .line 352
    iput v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 353
    .line 354
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 355
    .line 356
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v10, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .line 361
    .line 362
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    const/4 v15, 0x0

    .line 365
    invoke-direct {v12, v0, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v12, v2}, Landroid/view/View;->setId(I)V

    .line 369
    .line 370
    .line 371
    const/4 v15, 0x1

    .line 372
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 373
    .line 374
    .line 375
    const/high16 v1, 0x41900000    # 18.0f

    .line 376
    .line 377
    invoke-virtual {v12, v15, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 378
    .line 379
    .line 380
    sget v1, Lnet/kaki87/soul2/testing/R$string;->down_list:I

    .line 381
    .line 382
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    .line 384
    .line 385
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 386
    .line 387
    const/4 v15, -0x2

    .line 388
    invoke-direct {v1, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    .line 390
    .line 391
    const/16 v15, 0xf

    .line 392
    .line 393
    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 394
    .line 395
    .line 396
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 397
    .line 398
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .line 403
    .line 404
    new-instance v1, Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    .line 411
    .line 412
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 413
    .line 414
    move-object/from16 v22, v12

    .line 415
    .line 416
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 417
    .line 418
    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 419
    .line 420
    .line 421
    const/16 v12, 0x11

    .line 422
    .line 423
    invoke-virtual {v15, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v9, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    .line 428
    .line 429
    new-instance v2, Landroid/widget/FrameLayout;

    .line 430
    .line 431
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 435
    .line 436
    .line 437
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    .line 439
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 440
    .line 441
    const/4 v15, -0x2

    .line 442
    invoke-direct {v4, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 443
    .line 444
    .line 445
    const/16 v12, 0x10

    .line 446
    .line 447
    invoke-virtual {v4, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    .line 449
    .line 450
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 451
    .line 452
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 453
    .line 454
    invoke-virtual {v10, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    .line 456
    .line 457
    const/high16 v4, 0x41600000    # 14.0f

    .line 458
    .line 459
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    float-to-int v4, v4

    .line 464
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 465
    .line 466
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 473
    .line 474
    .line 475
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 476
    .line 477
    move-object/from16 v18, v1

    .line 478
    .line 479
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 480
    .line 481
    invoke-direct {v15, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 482
    .line 483
    .line 484
    const v1, 0x800005

    .line 485
    .line 486
    .line 487
    iput v1, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 488
    .line 489
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 490
    .line 491
    mul-int/lit8 v1, v1, 0x2

    .line 492
    .line 493
    invoke-virtual {v15, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    .line 498
    .line 499
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 500
    .line 501
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 508
    .line 509
    .line 510
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 511
    .line 512
    move-object/from16 p1, v12

    .line 513
    .line 514
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 515
    .line 516
    invoke-direct {v15, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 517
    .line 518
    .line 519
    const v12, 0x800005

    .line 520
    .line 521
    .line 522
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 523
    .line 524
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 525
    .line 526
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v2, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .line 531
    .line 532
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 533
    .line 534
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 541
    .line 542
    .line 543
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 544
    .line 545
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 546
    .line 547
    invoke-direct {v4, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 548
    .line 549
    .line 550
    const v14, 0x800005

    .line 551
    .line 552
    .line 553
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    .line 555
    invoke-virtual {v2, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    .line 557
    .line 558
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 559
    .line 560
    const/4 v15, 0x0

    .line 561
    invoke-direct {v4, v0, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 562
    .line 563
    .line 564
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 565
    .line 566
    const/4 v15, 0x0

    .line 567
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 568
    .line 569
    .line 570
    const/16 v14, 0x10

    .line 571
    .line 572
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 573
    .line 574
    .line 575
    const/4 v14, 0x3

    .line 576
    invoke-virtual {v4, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 577
    .line 578
    .line 579
    const/high16 v14, 0x41800000    # 16.0f

    .line 580
    .line 581
    const/4 v15, 0x1

    .line 582
    invoke-virtual {v4, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 583
    .line 584
    .line 585
    const/16 v14, 0x8

    .line 586
    .line 587
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 588
    .line 589
    .line 590
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 591
    .line 592
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 593
    .line 594
    move-object/from16 v17, v12

    .line 595
    .line 596
    const/4 v12, -0x2

    .line 597
    invoke-direct {v14, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 598
    .line 599
    .line 600
    const v12, 0x800005

    .line 601
    .line 602
    .line 603
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 604
    .line 605
    const/high16 v12, 0x42500000    # 52.0f

    .line 606
    .line 607
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    float-to-int v12, v12

    .line 612
    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    .line 617
    .line 618
    new-instance v12, Lcom/mycompany/app/view/MyButtonCheck;

    .line 619
    .line 620
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 621
    .line 622
    .line 623
    const/16 v14, 0x8

    .line 624
    .line 625
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 626
    .line 627
    .line 628
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 629
    .line 630
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 631
    .line 632
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 633
    .line 634
    .line 635
    const v15, 0x800005

    .line 636
    .line 637
    .line 638
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 639
    .line 640
    invoke-virtual {v2, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    .line 642
    .line 643
    new-instance v2, Landroid/widget/FrameLayout;

    .line 644
    .line 645
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 649
    .line 650
    .line 651
    const/4 v6, 0x4

    .line 652
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 653
    .line 654
    .line 655
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 656
    .line 657
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 658
    .line 659
    const/4 v15, -0x2

    .line 660
    invoke-direct {v6, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 661
    .line 662
    .line 663
    const/16 v14, 0x15

    .line 664
    .line 665
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v10, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    .line 670
    .line 671
    new-instance v6, Lcom/mycompany/app/view/MyProgressBar;

    .line 672
    .line 673
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 674
    .line 675
    .line 676
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 677
    .line 678
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 679
    .line 680
    .line 681
    move-result v14

    .line 682
    float-to-int v14, v14

    .line 683
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 684
    .line 685
    .line 686
    const/high16 v14, 0x40000000    # 2.0f

    .line 687
    .line 688
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 689
    .line 690
    .line 691
    move-result v14

    .line 692
    float-to-int v14, v14

    .line 693
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 694
    .line 695
    move-object/from16 v16, v2

    .line 696
    .line 697
    const/4 v2, -0x1

    .line 698
    invoke-direct {v15, v2, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 699
    .line 700
    .line 701
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 702
    .line 703
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 704
    .line 705
    invoke-virtual {v8, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    .line 707
    .line 708
    new-instance v14, Landroid/widget/RelativeLayout;

    .line 709
    .line 710
    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v14, v5}, Landroid/view/View;->setId(I)V

    .line 714
    .line 715
    .line 716
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 717
    .line 718
    const/4 v15, -0x2

    .line 719
    invoke-direct {v5, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 720
    .line 721
    .line 722
    const/16 v2, 0xc

    .line 723
    .line 724
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v7, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    .line 729
    .line 730
    new-instance v2, Landroid/widget/FrameLayout;

    .line 731
    .line 732
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 733
    .line 734
    .line 735
    const/16 v5, 0x8

    .line 736
    .line 737
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .line 739
    .line 740
    const/4 v5, -0x1

    .line 741
    invoke-virtual {v14, v2, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 742
    .line 743
    .line 744
    iput-object v7, v0, Lcom/mycompany/app/main/list/MainListCast;->G1:Lcom/mycompany/app/view/MyMainRelative;

    .line 745
    .line 746
    iput-object v3, v0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 747
    .line 748
    new-instance v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 749
    .line 750
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 751
    .line 752
    .line 753
    iput-object v7, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 754
    .line 755
    iput-object v8, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 756
    .line 757
    iput-object v11, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 758
    .line 759
    iput-object v13, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 760
    .line 761
    move-object/from16 v5, v20

    .line 762
    .line 763
    iput-object v5, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 764
    .line 765
    move-object/from16 v5, v19

    .line 766
    .line 767
    iput-object v5, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 768
    .line 769
    iput-object v10, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 770
    .line 771
    move-object/from16 v5, v21

    .line 772
    .line 773
    iput-object v5, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 774
    .line 775
    iput-object v9, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->g:Lcom/mycompany/app/view/MyButtonRelative;

    .line 776
    .line 777
    move-object/from16 v5, v22

    .line 778
    .line 779
    iput-object v5, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 780
    .line 781
    move-object/from16 v5, v18

    .line 782
    .line 783
    iput-object v5, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->h:Landroid/widget/ImageView;

    .line 784
    .line 785
    move-object/from16 v5, p1

    .line 786
    .line 787
    iput-object v5, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 788
    .line 789
    iput-object v1, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 790
    .line 791
    move-object/from16 v1, v17

    .line 792
    .line 793
    iput-object v1, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 794
    .line 795
    iput-object v4, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 796
    .line 797
    iput-object v12, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 798
    .line 799
    iput-object v6, v3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->q:Lcom/mycompany/app/view/MyProgressBar;

    .line 800
    .line 801
    iput-object v3, v0, Lcom/mycompany/app/main/list/MainListCast;->M1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 802
    .line 803
    move-object/from16 v1, v16

    .line 804
    .line 805
    invoke-virtual {v0, v7, v1, v2}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 806
    .line 807
    .line 808
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->G1:Lcom/mycompany/app/view/MyMainRelative;

    .line 809
    .line 810
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 815
    .line 816
    .line 817
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->G1:Lcom/mycompany/app/view/MyMainRelative;

    .line 818
    .line 819
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 820
    .line 821
    .line 822
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 823
    .line 824
    if-nez v1, :cond_1

    .line 825
    .line 826
    return-void

    .line 827
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/list/MainListCast$1;

    .line 828
    .line 829
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListCast$1;-><init>(Lcom/mycompany/app/main/list/MainListCast;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .line 834
    .line 835
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListCast;->G1:Lcom/mycompany/app/view/MyMainRelative;

    .line 24
    .line 25
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/list/MainListCast;->E0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/main/list/MainListCast;->D1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListCast;->F0()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 40
    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListCast;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListCast;->F1:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-boolean v4, p0, Lcom/mycompany/app/main/list/MainListCast;->F1:Z

    .line 23
    .line 24
    invoke-virtual {v3, v1, v0, v4}, Lcom/mycompany/app/main/MainListView;->R(ZZZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-boolean v2, p0, Lcom/mycompany/app/main/list/MainListCast;->C1:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/main/list/MainListCast;->F1:Z

    .line 30
    .line 31
    return-void
.end method
