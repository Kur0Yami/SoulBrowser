.class public Lcom/mycompany/app/dialog/DialogSetJava;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic s0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Lcom/mycompany/app/view/MyButtonImage;

.field public h0:Lcom/mycompany/app/view/MyRecyclerView;

.field public i0:Lcom/mycompany/app/view/MyLineText;

.field public j0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

.field public l0:Lcom/mycompany/app/dialog/DialogListBook;

.field public m0:Z

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetJava;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->d0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->e0:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetJava$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetJava$1;-><init>(Lcom/mycompany/app/dialog/DialogSetJava;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetJava;->e0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

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
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetJava;->d0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookJava;->m(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->m0:Z

    .line 61
    .line 62
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 63
    .line 64
    if-eq v1, v2, :cond_4

    .line 65
    .line 66
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetJava;->m0:Z

    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 69
    .line 70
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 71
    .line 72
    sget v16, Lnet/kaki87/soul2/testing/R$string;->java_script:I

    .line 73
    .line 74
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetJava;->r0:Ljava/lang/String;

    .line 75
    .line 76
    const/16 v17, 0x2

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/4 v15, 0x0

    .line 81
    move/from16 v20, v2

    .line 82
    .line 83
    move-object/from16 v19, v3

    .line 84
    .line 85
    invoke-direct/range {v14 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v14}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->n0:Z

    .line 92
    .line 93
    if-eq v1, v7, :cond_5

    .line 94
    .line 95
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetJava;->n0:Z

    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 98
    .line 99
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 100
    .line 101
    sget v4, Lnet/kaki87/soul2/testing/R$string;->js_block_site:I

    .line 102
    .line 103
    const/4 v8, 0x1

    .line 104
    const/4 v6, 0x1

    .line 105
    const/4 v3, 0x2

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->o0:Z

    .line 114
    .line 115
    if-eq v1, v13, :cond_6

    .line 116
    .line 117
    iput-boolean v13, v0, Lcom/mycompany/app/dialog/DialogSetJava;->o0:Z

    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 120
    .line 121
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 122
    .line 123
    sget v10, Lnet/kaki87/soul2/testing/R$string;->js_block_page:I

    .line 124
    .line 125
    const/4 v14, 0x1

    .line 126
    const/4 v12, 0x0

    .line 127
    const/4 v9, 0x3

    .line 128
    const/4 v11, 0x0

    .line 129
    invoke-direct/range {v8 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v8}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    move/from16 v2, p1

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_3
    return-void
.end method

.method public final dismiss()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->k0:Lcom/mycompany/app/dialog/DialogSetJava$DialogTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetJava;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 27
    .line 28
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetJava;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 29
    .line 30
    if-eqz v4, :cond_5

    .line 31
    .line 32
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetJava;->n0:Z

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetJava;->o0:Z

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    move v6, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move v6, v0

    .line 47
    :goto_0
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetJava;->p0:Z

    .line 48
    .line 49
    if-eq v3, v6, :cond_4

    .line 50
    .line 51
    move v5, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move v5, v0

    .line 54
    :goto_1
    iget-boolean v9, p0, Lcom/mycompany/app/dialog/DialogSetJava;->q0:Z

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-interface/range {v4 .. v10}, Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;->a(ZZZZZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 63
    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetJava;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 72
    .line 73
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetJava;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetJava;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 90
    .line 91
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetJava;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetJava;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->j0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 108
    .line 109
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->d0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->e0:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetJava;->r0:Ljava/lang/String;

    .line 118
    .line 119
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
