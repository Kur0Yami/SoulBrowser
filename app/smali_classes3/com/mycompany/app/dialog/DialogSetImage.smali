.class public Lcom/mycompany/app/dialog/DialogSetImage;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;
    }
.end annotation


# static fields
.field public static final synthetic E0:I


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Z

.field public D0:I

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

.field public final d0:Z

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Landroid/widget/ImageView;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Lcom/mycompany/app/view/MyRecyclerView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public l0:Lcom/mycompany/app/view/MyPopupMenu;

.field public m0:Lcom/mycompany/app/view/MyPopupMenu;

.field public n0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public final o0:I

.field public final p0:Z

.field public final q0:Z

.field public final r0:I

.field public final s0:I

.field public final t0:Z

.field public final u0:Z

.field public final v0:I

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public z0:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->c0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->o0:I

    .line 23
    .line 24
    sget-boolean p2, Lcom/mycompany/app/pref/PrefImage;->w:Z

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->p0:Z

    .line 27
    .line 28
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->y:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->q0:Z

    .line 31
    .line 32
    sget v1, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 33
    .line 34
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->r0:I

    .line 35
    .line 36
    sget v2, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 37
    .line 38
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->s0:I

    .line 39
    .line 40
    sget-boolean v3, Lcom/mycompany/app/pref/PrefImage;->v:Z

    .line 41
    .line 42
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->t0:Z

    .line 43
    .line 44
    sget-boolean v4, Lcom/mycompany/app/pref/PrefImage;->x:Z

    .line 45
    .line 46
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogSetImage;->u0:Z

    .line 47
    .line 48
    sget v5, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 49
    .line 50
    iput v5, p0, Lcom/mycompany/app/dialog/DialogSetImage;->v0:I

    .line 51
    .line 52
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 53
    .line 54
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 57
    .line 58
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 59
    .line 60
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 63
    .line 64
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 65
    .line 66
    iput v5, p0, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetImage$1;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetImage$1;-><init>(Lcom/mycompany/app/dialog/DialogSetImage;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final B()Ljava/util/ArrayList;
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 9
    .line 10
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 18
    .line 19
    :goto_1
    int-to-float v3, v3

    .line 20
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->K6(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 34
    .line 35
    sget v6, Lnet/kaki87/soul2/testing/R$string;->type:I

    .line 36
    .line 37
    sget-object v5, Lcom/mycompany/app/main/MainConst;->e0:[I

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget v7, p0, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget v7, p0, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 45
    .line 46
    :goto_2
    aget v7, v5, v7

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 58
    .line 59
    sget v7, Lnet/kaki87/soul2/testing/R$string;->size:I

    .line 60
    .line 61
    sget-object v4, Lcom/mycompany/app/main/MainConst;->f0:[I

    .line 62
    .line 63
    aget v8, v4, v1

    .line 64
    .line 65
    sget-object v4, Lcom/mycompany/app/main/MainConst;->g0:[I

    .line 66
    .line 67
    aget v9, v4, v1

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v6, 0x1

    .line 71
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 78
    .line 79
    sget v8, Lnet/kaki87/soul2/testing/R$string;->page_split:I

    .line 80
    .line 81
    sget v9, Lnet/kaki87/soul2/testing/R$string;->split_info:I

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 86
    .line 87
    :goto_3
    move v11, v1

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_4
    const/4 v12, 0x1

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v7, 0x2

    .line 95
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 102
    .line 103
    sget v4, Lnet/kaki87/soul2/testing/R$string;->margin:I

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_4
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 111
    .line 112
    :goto_5
    const/4 v5, 0x0

    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    goto :goto_6

    .line 117
    :cond_5
    move v0, v5

    .line 118
    :goto_6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    const/16 v6, 0xa

    .line 122
    .line 123
    iput v6, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 124
    .line 125
    const/4 v6, 0x3

    .line 126
    iput v6, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 127
    .line 128
    iput v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->c:I

    .line 129
    .line 130
    const/16 v4, 0x32

    .line 131
    .line 132
    iput v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->o:I

    .line 133
    .line 134
    iput v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->p:I

    .line 135
    .line 136
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 137
    .line 138
    iput v5, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->u:I

    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    return-object v3
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->n0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->n0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->w:Z

    .line 9
    .line 10
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->y:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    :cond_0
    sput v1, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 29
    .line 30
    sput-boolean v0, Lcom/mycompany/app/pref/PrefImage;->w:Z

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 33
    .line 34
    sput-boolean v0, Lcom/mycompany/app/pref/PrefImage;->y:Z

    .line 35
    .line 36
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 37
    .line 38
    sput v0, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "mViewLand"

    .line 47
    .line 48
    sget v3, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 49
    .line 50
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "mFitLand"

    .line 54
    .line 55
    sget-boolean v3, Lcom/mycompany/app/pref/PrefImage;->w:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v1, "mSplitLand"

    .line 61
    .line 62
    sget-boolean v3, Lcom/mycompany/app/pref/PrefImage;->y:Z

    .line 63
    .line 64
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const-string v1, "mMarginLand"

    .line 68
    .line 69
    sget v3, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 70
    .line 71
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 75
    .line 76
    .line 77
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 78
    .line 79
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 80
    .line 81
    if-ne v0, v1, :cond_2

    .line 82
    .line 83
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->v:Z

    .line 84
    .line 85
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 86
    .line 87
    if-ne v0, v3, :cond_2

    .line 88
    .line 89
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->x:Z

    .line 90
    .line 91
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 92
    .line 93
    if-ne v0, v3, :cond_2

    .line 94
    .line 95
    sget v0, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 96
    .line 97
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 98
    .line 99
    if-eq v0, v3, :cond_3

    .line 100
    .line 101
    :cond_2
    sput v1, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 104
    .line 105
    sput-boolean v0, Lcom/mycompany/app/pref/PrefImage;->v:Z

    .line 106
    .line 107
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 108
    .line 109
    sput-boolean v0, Lcom/mycompany/app/pref/PrefImage;->x:Z

    .line 110
    .line 111
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 112
    .line 113
    sput v0, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 114
    .line 115
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "mViewPort"

    .line 122
    .line 123
    sget v2, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "mFitPort"

    .line 129
    .line 130
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->v:Z

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    const-string v1, "mSplitPort"

    .line 136
    .line 137
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->x:Z

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    const-string v1, "mMarginPort"

    .line 143
    .line 144
    sget v2, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 145
    .line 146
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 150
    .line 151
    .line 152
    :cond_3
    if-eqz p1, :cond_4

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetImage;->dismiss()V

    .line 155
    .line 156
    .line 157
    :cond_4
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->c0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    sget v2, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 19
    .line 20
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->o0:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->w:Z

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->p0:Z

    .line 27
    .line 28
    if-ne v2, v3, :cond_2

    .line 29
    .line 30
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->y:Z

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->q0:Z

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    sget v2, Lcom/mycompany/app/pref/PrefImage;->A:I

    .line 37
    .line 38
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->r0:I

    .line 39
    .line 40
    if-eq v2, v3, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget v2, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 44
    .line 45
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->s0:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->v:Z

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->t0:Z

    .line 52
    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->x:Z

    .line 56
    .line 57
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->u0:Z

    .line 58
    .line 59
    if-ne v2, v3, :cond_2

    .line 60
    .line 61
    sget v2, Lcom/mycompany/app/pref/PrefImage;->z:I

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetImage;->v0:I

    .line 64
    .line 65
    if-eq v2, v3, :cond_3

    .line 66
    .line 67
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;->a()V

    .line 68
    .line 69
    .line 70
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->c0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetImage;->C()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 85
    .line 86
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 96
    .line 97
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 105
    .line 106
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 114
    .line 115
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 116
    .line 117
    if-eqz v0, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 123
    .line 124
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 125
    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 132
    .line 133
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->f0:Landroid/widget/ImageView;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetImage;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 144
    .line 145
    .line 146
    return-void
.end method
