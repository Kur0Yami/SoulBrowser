.class public Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:[J

.field public i:Landroid/app/AlertDialog;

.field public j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Ljava/util/ArrayList;[JI)I
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    move v2, v0

    .line 14
    :goto_1
    array-length v3, p1

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    aget-wide v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/google/android/gms/cast/MediaTrack;

    .line 24
    .line 25
    iget-wide v5, v5, Lcom/google/android/gms/cast/MediaTrack;->c:J

    .line 26
    .line 27
    cmp-long v3, v3, v5

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return p2
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->c:Z

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v2, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v2, [J

    .line 25
    .line 26
    iput-object v3, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->h:[J

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/cast/framework/CastContext;->e(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_9

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_0

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 59
    .line 60
    if-eqz v3, :cond_9

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_9

    .line 75
    .line 76
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaStatus;->o:[J

    .line 85
    .line 86
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->h:[J

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    iput-boolean v2, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->c:Z

    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    iget-object v3, v3, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 98
    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    iput-boolean v2, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->c:Z

    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    const/4 v7, 0x2

    .line 118
    if-eqz v6, :cond_5

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 125
    .line 126
    iget v8, v6, Lcom/google/android/gms/cast/MediaTrack;->f:I

    .line 127
    .line 128
    if-ne v8, v7, :cond_4

    .line 129
    .line 130
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g:Ljava/util/ArrayList;

    .line 135
    .line 136
    new-instance v4, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_7

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Lcom/google/android/gms/cast/MediaTrack;

    .line 156
    .line 157
    iget v6, v5, Lcom/google/android/gms/cast/MediaTrack;->f:I

    .line 158
    .line 159
    if-ne v6, v1, :cond_6

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->f:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_8

    .line 172
    .line 173
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->f:Ljava/util/ArrayList;

    .line 174
    .line 175
    new-instance v3, Lcom/google/android/gms/cast/MediaTrack$Builder;

    .line 176
    .line 177
    const-wide/16 v9, -0x1

    .line 178
    .line 179
    invoke-direct {v3, v9, v10}, Lcom/google/android/gms/cast/MediaTrack$Builder;-><init>(J)V

    .line 180
    .line 181
    .line 182
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    sget v6, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_none:I

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    new-array v6, v2, [Ljava/lang/Object;

    .line 195
    .line 196
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaTrack$Builder;->b:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v3, v7}, Lcom/google/android/gms/cast/MediaTrack$Builder;->a(I)V

    .line 203
    .line 204
    .line 205
    new-instance v8, Lcom/google/android/gms/cast/MediaTrack;

    .line 206
    .line 207
    iget-object v13, v3, Lcom/google/android/gms/cast/MediaTrack$Builder;->a:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v14, v3, Lcom/google/android/gms/cast/MediaTrack$Builder;->b:Ljava/lang/String;

    .line 210
    .line 211
    iget v3, v3, Lcom/google/android/gms/cast/MediaTrack$Builder;->c:I

    .line 212
    .line 213
    const/16 v17, 0x0

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/4 v11, 0x1

    .line 218
    const-string v12, ""

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    move/from16 v16, v3

    .line 222
    .line 223
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    return-void

    .line 230
    :cond_9
    :goto_2
    iput-boolean v2, v0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->c:Z

    .line 231
    .line 232
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->h:[J

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g(Ljava/util/ArrayList;[JI)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->h:[J

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g(Ljava/util/ArrayList;[JI)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->f:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/gms/cast/framework/media/zzbk;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;I)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1, v3, v4, v0}, Lcom/google/android/gms/cast/framework/media/zzbk;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;I)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget v4, Lcom/google/android/gms/cast/framework/R$layout;->cast_tracks_chooser_dialog_layout:I

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget v4, Lcom/google/android/gms/cast/framework/R$id;->text_list_view:I

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Landroid/widget/ListView;

    .line 72
    .line 73
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->audio_list_view:I

    .line 74
    .line 75
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroid/widget/ListView;

    .line 80
    .line 81
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->tab_host:I

    .line 82
    .line 83
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Landroid/widget/TabHost;

    .line 88
    .line 89
    invoke-virtual {v7}, Landroid/widget/TabHost;->setup()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const/4 v9, 0x4

    .line 97
    if-nez v8, :cond_0

    .line 98
    .line 99
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "textTab"

    .line 107
    .line 108
    invoke-virtual {v7, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget v8, Lcom/google/android/gms/cast/framework/R$id;->text_list_view:I

    .line 113
    .line 114
    invoke-virtual {v4, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 115
    .line 116
    .line 117
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    sget v11, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_subtitles:I

    .line 124
    .line 125
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    new-array v11, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v4, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    const/4 v8, 0x1

    .line 146
    if-gt v4, v8, :cond_1

    .line 147
    .line 148
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v6, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    .line 154
    .line 155
    const-string v4, "audioTab"

    .line 156
    .line 157
    invoke-virtual {v7, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->audio_list_view:I

    .line 162
    .line 163
    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 164
    .line 165
    .line 166
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    sget v9, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_audio:I

    .line 173
    .line 174
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    new-array v9, v1, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 188
    .line 189
    .line 190
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    sget v7, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_ok:I

    .line 201
    .line 202
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    new-array v7, v1, [Ljava/lang/Object;

    .line 207
    .line 208
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    new-instance v7, Lcom/google/android/gms/cast/framework/media/zzbi;

    .line 213
    .line 214
    invoke-direct {v7, p0, v2, p1}, Lcom/google/android/gms/cast/framework/media/zzbi;-><init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbk;Lcom/google/android/gms/cast/framework/media/zzbk;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    sget v3, Lcom/google/android/gms/cast/framework/R$string;->cast_tracks_chooser_dialog_cancel:I

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-array v1, v1, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzbh;

    .line 238
    .line 239
    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/framework/media/zzbh;-><init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 246
    .line 247
    if-eqz p1, :cond_2

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 250
    .line 251
    .line 252
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 253
    .line 254
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 259
    .line 260
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
