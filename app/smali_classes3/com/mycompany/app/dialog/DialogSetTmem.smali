.class public Lcom/mycompany/app/dialog/DialogSetTmem;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic p0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyRecyclerView;

.field public h0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

.field public j0:Lcom/mycompany/app/view/MyPopupMenu;

.field public k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public l0:Lcom/mycompany/app/dialog/DialogListBook;

.field public m0:I

.field public n0:Z

.field public o0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->c0:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->d0:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTmem$1;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetTmem$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetTmem;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    const-string v2, "mTabMemory"

    .line 18
    .line 19
    invoke-static {v0, v1, p1, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 23
    .line 24
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 27
    .line 28
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogSetTmem;->C(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/mycompany/app/dialog/DialogSetTmem;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$string;->limit_info_2:I

    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_tip:I

    .line 23
    .line 24
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method


# virtual methods
.method public final C(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    const/4 v1, 0x3

    .line 8
    if-ge p1, v1, :cond_1

    .line 9
    .line 10
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    const-string v0, ""

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final E(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->d0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    move v7, v1

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->c0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookTmem;->m(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->m0:I

    .line 61
    .line 62
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 63
    .line 64
    if-eq v1, v2, :cond_4

    .line 65
    .line 66
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->m0:I

    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 69
    .line 70
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 71
    .line 72
    sget v16, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogSetTmem;->C(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v17

    .line 78
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetTmem;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v18

    .line 84
    const/16 v20, 0x0

    .line 85
    .line 86
    const/16 v21, 0x2

    .line 87
    .line 88
    const/4 v15, 0x0

    .line 89
    const/16 v19, 0x0

    .line 90
    .line 91
    invoke-direct/range {v14 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v14}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->n0:Z

    .line 98
    .line 99
    if-eq v1, v7, :cond_5

    .line 100
    .line 101
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->n0:Z

    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 104
    .line 105
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 106
    .line 107
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_block_site:I

    .line 108
    .line 109
    const/4 v8, 0x1

    .line 110
    const/4 v6, 0x1

    .line 111
    const/4 v3, 0x2

    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->o0:Z

    .line 120
    .line 121
    if-eq v1, v13, :cond_6

    .line 122
    .line 123
    iput-boolean v13, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->o0:Z

    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 126
    .line 127
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 128
    .line 129
    sget v10, Lnet/kaki87/soul2/testing/R$string;->mem_block_page:I

    .line 130
    .line 131
    const/4 v14, 0x1

    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v9, 0x3

    .line 134
    const/4 v11, 0x0

    .line 135
    invoke-direct/range {v8 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v8}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    move/from16 v2, p1

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_3
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->i0:Lcom/mycompany/app/dialog/DialogSetTmem$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 72
    .line 73
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->b0:Landroid/content/Context;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->c0:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem;->d0:Ljava/lang/String;

    .line 80
    .line 81
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
