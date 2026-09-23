.class Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingInfoLegalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V
    .locals 1

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "notice/"

    .line 4
    .line 5
    const-string v2, "https://cdn.jsdelivr.net/gh/SoulBrowser/SoulBrowser@master/Notice/"

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/mycompany/app/setting/SettingInfoLegalView;

    .line 18
    .line 19
    if-eqz v3, :cond_10

    .line 20
    .line 21
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_1
    sget v4, Lcom/mycompany/app/setting/SettingInfoLegalView;->i2:I

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {v3, v4}, Lcom/mycompany/app/setting/SettingInfoLegalView;->O0(Z)V

    .line 31
    .line 32
    .line 33
    iget-boolean v5, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->X1:Z

    .line 34
    .line 35
    const-string v6, "privacy_en.txt"

    .line 36
    .line 37
    const-string v7, "privacy_ko.txt"

    .line 38
    .line 39
    const-string v8, "tos_en.txt"

    .line 40
    .line 41
    const-string v9, "tos_ko.txt"

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    if-eqz v5, :cond_5

    .line 46
    .line 47
    :try_start_0
    iget-boolean v5, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->Y1:Z

    .line 48
    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    move-object v5, v9

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v5, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    move-object v5, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move-object v5, v6

    .line 70
    :goto_0
    iget-object v14, v3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    const/4 v13, 0x0

    .line 77
    const/16 v17, 0x1

    .line 78
    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    invoke-static/range {v12 .. v17}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->f2:Ljava/net/HttpURLConnection;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/16 v12, 0xc8

    .line 95
    .line 96
    if-ne v5, v12, :cond_5

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    iput-object v5, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->g2:Ljava/io/InputStream;

    .line 103
    .line 104
    const-string v12, "gzip"

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    goto :goto_1

    .line 115
    :catch_0
    :cond_5
    move-object v5, v10

    .line 116
    :catch_1
    :goto_1
    if-nez v5, :cond_9

    .line 117
    .line 118
    :try_start_2
    iget-boolean v2, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->Y1:Z

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_8

    .line 127
    .line 128
    move-object v8, v9

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    move-object v6, v7

    .line 137
    :cond_7
    move-object v8, v6

    .line 138
    :cond_8
    :goto_2
    iget-object v2, v3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iput-object v5, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->g2:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    .line 154
    :catch_2
    :cond_9
    if-eqz v5, :cond_b

    .line 155
    .line 156
    if-eqz v11, :cond_a

    .line 157
    .line 158
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    .line 159
    .line 160
    new-instance v2, Ljava/io/InputStreamReader;

    .line 161
    .line 162
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    .line 163
    .line 164
    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .line 166
    .line 167
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    invoke-direct {v2, v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 173
    .line 174
    .line 175
    :goto_3
    move-object v10, v1

    .line 176
    goto :goto_4

    .line 177
    :cond_a
    new-instance v1, Ljava/io/BufferedReader;

    .line 178
    .line 179
    new-instance v2, Ljava/io/InputStreamReader;

    .line 180
    .line 181
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 182
    .line 183
    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :goto_4
    iput-object v10, v3, Lcom/mycompany/app/setting/SettingInfoLegalView;->h2:Ljava/io/BufferedReader;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 191
    .line 192
    :catch_3
    :cond_b
    if-eqz v10, :cond_f

    .line 193
    .line 194
    :catch_4
    :goto_5
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 195
    .line 196
    if-eqz v1, :cond_c

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 203
    if-nez v1, :cond_d

    .line 204
    .line 205
    :goto_6
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->f:Ljava/util/ArrayList;

    .line 206
    .line 207
    if-eqz v1, :cond_f

    .line 208
    .line 209
    const-string v2, ""

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_d
    :try_start_5
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->f:Ljava/util/ArrayList;

    .line 216
    .line 217
    if-nez v2, :cond_e

    .line 218
    .line 219
    new-instance v2, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->f:Ljava/util/ArrayList;

    .line 225
    .line 226
    :cond_e
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->f:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_f
    :goto_7
    invoke-virtual {v3, v4}, Lcom/mycompany/app/setting/SettingInfoLegalView;->O0(Z)V

    .line 237
    .line 238
    .line 239
    :cond_10
    :goto_8
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingInfoLegalView;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Z1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/setting/SettingInfoLegalView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->c2:Landroid/view/GestureDetector;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance v2, Landroid/view/GestureDetector;

    .line 32
    .line 33
    new-instance v3, Lcom/mycompany/app/setting/SettingInfoLegalView$5;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingInfoLegalView$5;-><init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->c2:Landroid/view/GestureDetector;

    .line 42
    .line 43
    :goto_0
    new-instance v2, Lcom/mycompany/app/main/MainTxtAdapter;

    .line 44
    .line 45
    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, v2, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 49
    .line 50
    const/16 v1, 0x64

    .line 51
    .line 52
    iput v1, v2, Lcom/mycompany/app/main/MainTxtAdapter;->d:I

    .line 53
    .line 54
    const/16 v3, 0x1f4

    .line 55
    .line 56
    iput v3, v2, Lcom/mycompany/app/main/MainTxtAdapter;->e:I

    .line 57
    .line 58
    iput v1, v2, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 59
    .line 60
    iput v1, v2, Lcom/mycompany/app/main/MainTxtAdapter;->j:I

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    iput v1, v2, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 64
    .line 65
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->a2:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Z1:Lcom/mycompany/app/view/MyCoverView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_1
    return-void
.end method
