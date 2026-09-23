.class Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogDownFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogDownFont;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFont;->d0:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->f:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFont;->e0:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->g:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1, v1, v0, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogDownFont;

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownFont;->b0:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->f:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->g:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_3
    const/4 v2, 0x1

    .line 49
    const/4 v3, 0x0

    .line 50
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 60
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    .line 61
    .line 62
    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    .line 64
    .line 65
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    .line 66
    .line 67
    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    if-eqz v7, :cond_d

    .line 76
    .line 77
    iget-boolean v8, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 78
    .line 79
    if-eqz v8, :cond_5

    .line 80
    .line 81
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->h:Ljava/util/ArrayList;

    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :catch_0
    :goto_1
    move-object v3, v2

    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_5
    invoke-static {v0, v7}, Lcom/mycompany/app/dialog/DialogDownFont;->B(Lcom/mycompany/app/dialog/DialogDownFont;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v0, v7}, Lcom/mycompany/app/dialog/DialogDownFont;->C(Lcom/mycompany/app/dialog/DialogDownFont;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_6

    .line 101
    .line 102
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_6

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-eqz v9, :cond_4

    .line 114
    .line 115
    iget-boolean v10, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 116
    .line 117
    if-eqz v10, :cond_7

    .line 118
    .line 119
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->h:Ljava/util/ArrayList;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_7
    invoke-static {v0, v9}, Lcom/mycompany/app/dialog/DialogDownFont;->B(Lcom/mycompany/app/dialog/DialogDownFont;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-static {v0, v9}, Lcom/mycompany/app/dialog/DialogDownFont;->C(Lcom/mycompany/app/dialog/DialogDownFont;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-nez v11, :cond_8

    .line 135
    .line 136
    move-object v8, v10

    .line 137
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-nez v10, :cond_9

    .line 142
    .line 143
    move-object v7, v9

    .line 144
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_6

    .line 149
    .line 150
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_a

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_a
    const-string v9, "TTF"

    .line 158
    .line 159
    const-string v10, "otf"

    .line 160
    .line 161
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-eqz v10, :cond_b

    .line 166
    .line 167
    const-string v9, "OTF"

    .line 168
    .line 169
    :cond_b
    new-instance v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 170
    .line 171
    invoke-direct {v10, v6, v8, v9}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-object v7, v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->h:Ljava/util/ArrayList;

    .line 177
    .line 178
    if-nez v7, :cond_c

    .line 179
    .line 180
    new-instance v7, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->h:Ljava/util/ArrayList;

    .line 186
    .line 187
    :cond_c
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->h:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 190
    .line 191
    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :catch_1
    move-object v5, v3

    .line 196
    goto :goto_1

    .line 197
    :catch_2
    move-object v4, v3

    .line 198
    move-object v5, v4

    .line 199
    goto :goto_1

    .line 200
    :catch_3
    move-object v4, v3

    .line 201
    move-object v5, v4

    .line 202
    :goto_3
    move-object v2, v3

    .line 203
    :cond_d
    :goto_4
    if-eqz v5, :cond_e

    .line 204
    .line 205
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 206
    .line 207
    .line 208
    :catch_4
    :cond_e
    if-eqz v4, :cond_f

    .line 209
    .line 210
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 211
    .line 212
    .line 213
    :catch_5
    :cond_f
    if-eqz v2, :cond_10

    .line 214
    .line 215
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 216
    .line 217
    .line 218
    :catch_6
    :cond_10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 219
    .line 220
    .line 221
    :cond_11
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDownFont;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFont;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDownFont;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;->h:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_9

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v4, 0x1

    .line 44
    if-ne v2, v4, :cond_8

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 47
    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 56
    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 65
    .line 66
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->x0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 69
    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :cond_6
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFont$12;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFont$12;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 83
    .line 84
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFont;->dismiss()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_8
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->f0:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Lcom/mycompany/app/main/MainDownAdapter;

    .line 106
    .line 107
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 108
    .line 109
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogDownFont;->f0:Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogDownFont;->e0:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v10, Lcom/mycompany/app/dialog/DialogDownFont$9;

    .line 114
    .line 115
    invoke-direct {v10, v0}, Lcom/mycompany/app/dialog/DialogDownFont$9;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 116
    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/main/MainDownAdapter;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;)V

    .line 120
    .line 121
    .line 122
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownFont;->s0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 125
    .line 126
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 130
    .line 131
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFont$10;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFont$10;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 140
    .line 141
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->s0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 147
    .line 148
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFont$11;

    .line 149
    .line 150
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFont$11;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_9
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 158
    .line 159
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 160
    .line 161
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFont;->dismiss()V

    .line 165
    .line 166
    .line 167
    return-void
.end method
