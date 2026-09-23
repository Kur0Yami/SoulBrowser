.class public Lcom/mycompany/app/dialog/DialogSeekFilter;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic m0:I


# instance fields
.field public a0:Landroid/app/Activity;

.field public b0:Landroid/content/Context;

.field public final c0:Z

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRecyclerView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyLineText;

.field public h0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public i0:Ljava/lang/String;

.field public j0:Z

.field public k0:I

.field public l0:Lcom/mycompany/app/dialog/DialogSetMsg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->a0:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->c0:Z

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    sget-wide v3, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 21
    .line 22
    cmp-long p2, v3, v0

    .line 23
    .line 24
    if-lez p2, :cond_0

    .line 25
    .line 26
    move p2, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p2, p1

    .line 29
    :goto_0
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 30
    .line 31
    sget p2, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 32
    .line 33
    sub-int/2addr p2, v2

    .line 34
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    sget-wide v3, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 38
    .line 39
    cmp-long p2, v3, v0

    .line 40
    .line 41
    if-lez p2, :cond_2

    .line 42
    .line 43
    move p2, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move p2, p1

    .line 46
    :goto_1
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 47
    .line 48
    sget p2, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 49
    .line 50
    sub-int/2addr p2, v2

    .line 51
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 52
    .line 53
    :goto_2
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 54
    .line 55
    if-gez p2, :cond_3

    .line 56
    .line 57
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/16 p1, 0x63

    .line 61
    .line 62
    if-le p2, p1, :cond_4

    .line 63
    .line 64
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 65
    .line 66
    :cond_4
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p2, " "

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

    .line 74
    .line 75
    sget v0, Lnet/kaki87/soul2/testing/R$string;->time_day:I

    .line 76
    .line 77
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->i0:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 84
    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekFilter$1;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSeekFilter$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final B()Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 7
    .line 8
    sget v3, Lnet/kaki87/soul2/testing/R$string;->auto_update:I

    .line 9
    .line 10
    iget-boolean v6, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->update_time:I

    .line 25
    .line 26
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 27
    .line 28
    iget-boolean v4, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    xor-int/2addr v4, v5

    .line 32
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->i0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v7, 0xa

    .line 38
    .line 39
    iput v7, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 40
    .line 41
    iput v5, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 42
    .line 43
    iput v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->c:I

    .line 44
    .line 45
    const/16 v2, 0x63

    .line 46
    .line 47
    iput v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->o:I

    .line 48
    .line 49
    iput v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->p:I

    .line 50
    .line 51
    iput-boolean v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 52
    .line 53
    iput-object v6, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->r:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iput v2, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->u:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->l0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->l0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-wide v1, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 6
    .line 7
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-wide v1, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 11
    .line 12
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 13
    .line 14
    :goto_0
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v1, v1, v4

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v6

    .line 25
    :goto_1
    iget v7, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 26
    .line 27
    if-gez v7, :cond_2

    .line 28
    .line 29
    iput v6, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/16 v8, 0x63

    .line 33
    .line 34
    if-le v7, v8, :cond_3

    .line 35
    .line 36
    iput v8, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 37
    .line 38
    :cond_3
    :goto_2
    iget v7, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 39
    .line 40
    add-int/2addr v7, v2

    .line 41
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 42
    .line 43
    if-ne v1, v2, :cond_4

    .line 44
    .line 45
    if-eq v7, v3, :cond_a

    .line 46
    .line 47
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v1, v6}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v0, :cond_7

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    sput-wide v2, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    sput-wide v4, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 67
    .line 68
    :goto_3
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 69
    .line 70
    const-string v0, "mScriptDay"

    .line 71
    .line 72
    const-string v2, "mScriptTime"

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    sget-wide v3, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 77
    .line 78
    invoke-virtual {v1, v3, v4, v2}, Lcom/mycompany/app/pref/PrefCore;->o(JLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 82
    .line 83
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_6
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    sput-wide v2, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    sput-wide v4, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 106
    .line 107
    :goto_4
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 108
    .line 109
    const-string v0, "mFilterDay"

    .line 110
    .line 111
    const-string v2, "mFilterTime"

    .line 112
    .line 113
    if-eqz p1, :cond_9

    .line 114
    .line 115
    sget-wide v3, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 116
    .line 117
    invoke-virtual {v1, v3, v4, v2}, Lcom/mycompany/app/pref/PrefCore;->o(JLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 121
    .line 122
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_5
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 133
    .line 134
    .line 135
    :cond_a
    if-eqz p1, :cond_b

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekFilter;->dismiss()V

    .line 138
    .line 139
    .line 140
    :cond_b
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekFilter;->C()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 48
    .line 49
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->a0:Landroid/app/Activity;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter;->i0:Ljava/lang/String;

    .line 56
    .line 57
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
