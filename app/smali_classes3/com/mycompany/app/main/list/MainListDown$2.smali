.class Lcom/mycompany/app/main/list/MainListDown$2;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$2;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$2;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p3, v0}, Lcom/mycompany/app/main/MainUtil;->h6(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    if-ne p3, v0, :cond_1

    .line 24
    .line 25
    new-instance p3, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "EXTRA_PATH"

    .line 31
    .line 32
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v0, "EXTRA_URL"

    .line 38
    .line 39
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const/4 p2, -0x1

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x5

    .line 53
    const/4 v1, 0x0

    .line 54
    if-ne p3, v0, :cond_7

    .line 55
    .line 56
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x1

    .line 60
    if-eq p3, v3, :cond_2

    .line 61
    .line 62
    if-ne p3, v2, :cond_7

    .line 63
    .line 64
    :cond_2
    sget-object p3, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 76
    .line 77
    const-string v4, "torrent:"

    .line 78
    .line 79
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    move v2, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 88
    .line 89
    if-le p3, v3, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    move v2, v1

    .line 93
    :goto_0
    if-nez v2, :cond_6

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    new-instance p3, Lcom/mycompany/app/main/list/MainListDown$16;

    .line 97
    .line 98
    invoke-direct {p3, p1, p2, v2}, Lcom/mycompany/app/main/list/MainListDown$16;-><init>(Lcom/mycompany/app/main/list/MainListDown;Lcom/mycompany/app/main/MainItem$ChildItem;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p3}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_7
    :goto_1
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 106
    .line 107
    const/4 v2, 0x4

    .line 108
    if-eq p3, v2, :cond_8

    .line 109
    .line 110
    if-eq p3, v0, :cond_8

    .line 111
    .line 112
    const/4 v0, 0x6

    .line 113
    if-ne p3, v0, :cond_9

    .line 114
    .line 115
    :cond_8
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 116
    .line 117
    if-eqz p3, :cond_9

    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_9

    .line 124
    .line 125
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 134
    .line 135
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 136
    .line 137
    invoke-static {p1, v0, v1, p3, p2}, Lcom/mycompany/app/main/list/MainListDown;->D0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 142
    .line 143
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p1, p3, p2, v1}, Lcom/mycompany/app/main/list/MainListDown;->E0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final h(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    move-object/from16 v2, p0

    .line 10
    .line 11
    iget-object v4, v2, Lcom/mycompany/app/main/list/MainListDown$2;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    move-object v3, v4

    .line 30
    sget-object v4, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v5, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v6, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v7, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v8, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static/range {v3 .. v9}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    move-object v3, v4

    .line 45
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eq v1, v4, :cond_3

    .line 50
    .line 51
    sget-object v1, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, v3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, v3, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, v3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->z(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    :cond_3
    :goto_0
    move/from16 v18, v5

    .line 74
    .line 75
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 76
    .line 77
    if-ne v1, v4, :cond_5

    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v6, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->T2(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/mycompany/app/main/list/MainListDown;->M0()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v3}, Lcom/mycompany/app/main/list/MainListDown;->I0()V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFile;

    .line 110
    .line 111
    new-instance v9, Lcom/mycompany/app/main/list/MainListDown$12;

    .line 112
    .line 113
    invoke-direct {v9, v3, v6}, Lcom/mycompany/app/main/list/MainListDown$12;-><init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v4, v3

    .line 117
    move/from16 v8, v18

    .line 118
    .line 119
    move-object v3, v0

    .line 120
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogDownFile;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, v4, Lcom/mycompany/app/main/list/MainListDown;->K1:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 124
    .line 125
    new-instance v0, Lcom/mycompany/app/main/list/MainListDown$13;

    .line 126
    .line 127
    invoke-direct {v0, v4}, Lcom/mycompany/app/main/list/MainListDown$13;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    move-object v4, v3

    .line 135
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v6, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->T2(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    iget-wide v10, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 146
    .line 147
    iget v12, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 148
    .line 149
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/mycompany/app/main/list/MainListDown;->M0()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    :goto_1
    return-void

    .line 158
    :cond_6
    invoke-virtual {v4}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 159
    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 162
    .line 163
    new-instance v0, Lcom/mycompany/app/main/list/MainListDown$7;

    .line 164
    .line 165
    invoke-direct {v0, v4, v6}, Lcom/mycompany/app/main/list/MainListDown$7;-><init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v8, 0x0

    .line 169
    const/4 v9, 0x0

    .line 170
    const/4 v13, 0x0

    .line 171
    const/4 v14, 0x0

    .line 172
    const/4 v15, 0x0

    .line 173
    const/16 v16, 0x0

    .line 174
    .line 175
    const/16 v17, 0x1

    .line 176
    .line 177
    move-object/from16 v19, v0

    .line 178
    .line 179
    invoke-direct/range {v3 .. v19}, Lcom/mycompany/app/dialog/DialogDownUrl;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;ILjava/util/List;ZILcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 180
    .line 181
    .line 182
    iput-object v3, v4, Lcom/mycompany/app/main/list/MainListDown;->I1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 183
    .line 184
    new-instance v0, Lcom/mycompany/app/main/list/MainListDown$8;

    .line 185
    .line 186
    invoke-direct {v0, v4}, Lcom/mycompany/app/main/list/MainListDown$8;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public final o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$2;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/list/MainListDown;->O1:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lcom/mycompany/app/main/list/MainListDown;->O1:Z

    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/mycompany/app/main/list/MainListDown;->N1:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/mycompany/app/main/list/MainListDown$5;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/mycompany/app/main/list/MainListDown$5;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final q(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$2;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h6(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v0, v1, p1, v2}, Lcom/mycompany/app/main/list/MainListDown;->E0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
