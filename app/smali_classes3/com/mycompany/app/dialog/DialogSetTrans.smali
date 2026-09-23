.class public Lcom/mycompany/app/dialog/DialogSetTrans;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic u0:I


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Landroid/view/View;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyRecyclerView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public l0:Lcom/mycompany/app/view/MyPopupMenu;

.field public m0:Lcom/mycompany/app/dialog/DialogTransLang;

.field public n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

.field public o0:Lcom/mycompany/app/dialog/DialogListBook;

.field public p0:I

.field public q0:Ljava/lang/String;

.field public r0:Z

.field public s0:Z

.field public t0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->d0:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->e0:Ljava/lang/String;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTrans$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetTrans$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

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
.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->m0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->m0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final C(Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->e0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

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
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->d0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookTrans;->m(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->p0:I

    .line 61
    .line 62
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 63
    .line 64
    if-eq v1, v2, :cond_4

    .line 65
    .line 66
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->p0:I

    .line 67
    .line 68
    sget-object v1, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 69
    .line 70
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 71
    .line 72
    aget v17, v1, v2

    .line 73
    .line 74
    sget-object v1, Lcom/mycompany/app/setting/SettingTrans;->k2:[I

    .line 75
    .line 76
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 77
    .line 78
    aget v18, v1, v2

    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 81
    .line 82
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 83
    .line 84
    sget v16, Lnet/kaki87/soul2/testing/R$string;->trans_detect:I

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    const/4 v15, 0x0

    .line 89
    invoke-direct/range {v14 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v14}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->q0:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->q0:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 110
    .line 111
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 112
    .line 113
    sget v16, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 114
    .line 115
    const/16 v18, 0x0

    .line 116
    .line 117
    const/16 v19, 0x0

    .line 118
    .line 119
    const/4 v15, 0x1

    .line 120
    move-object/from16 v17, v1

    .line 121
    .line 122
    invoke-direct/range {v14 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v14}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->r0:Z

    .line 129
    .line 130
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 131
    .line 132
    if-eq v1, v2, :cond_6

    .line 133
    .line 134
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->r0:Z

    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 137
    .line 138
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 139
    .line 140
    sget v16, Lnet/kaki87/soul2/testing/R$string;->trans_icon_always:I

    .line 141
    .line 142
    const/16 v20, 0x1

    .line 143
    .line 144
    const/16 v18, 0x2

    .line 145
    .line 146
    const/4 v15, 0x2

    .line 147
    const/16 v17, 0x0

    .line 148
    .line 149
    move/from16 v19, v2

    .line 150
    .line 151
    invoke-direct/range {v14 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v14}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->s0:Z

    .line 158
    .line 159
    if-eq v1, v7, :cond_7

    .line 160
    .line 161
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->s0:Z

    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 164
    .line 165
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 166
    .line 167
    sget v4, Lnet/kaki87/soul2/testing/R$string;->trans_block_site:I

    .line 168
    .line 169
    const/4 v8, 0x1

    .line 170
    const/4 v6, 0x1

    .line 171
    const/4 v3, 0x4

    .line 172
    const/4 v5, 0x0

    .line 173
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->t0:Z

    .line 180
    .line 181
    if-eq v1, v13, :cond_8

    .line 182
    .line 183
    iput-boolean v13, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->t0:Z

    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 186
    .line 187
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 188
    .line 189
    sget v10, Lnet/kaki87/soul2/testing/R$string;->trans_block_page:I

    .line 190
    .line 191
    const/4 v14, 0x1

    .line 192
    const/4 v12, 0x0

    .line 193
    const/4 v9, 0x5

    .line 194
    const/4 v11, 0x0

    .line 195
    invoke-direct/range {v8 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v8}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 202
    .line 203
    if-eqz v1, :cond_9

    .line 204
    .line 205
    move/from16 v2, p1

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 208
    .line 209
    .line 210
    :cond_9
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTrans;->B()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 41
    .line 42
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 50
    .line 51
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 77
    .line 78
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 86
    .line 87
    :cond_8
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->d0:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->e0:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans;->g0:Landroid/view/View;

    .line 98
    .line 99
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 100
    .line 101
    .line 102
    return-void
.end method
