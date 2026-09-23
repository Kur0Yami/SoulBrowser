.class Lcom/mycompany/app/dialog/DialogDownUrl$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$40;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$40;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_b

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    :try_start_0
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    .line 33
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 34
    const/4 v3, 0x1

    .line 35
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    goto :goto_4

    .line 46
    :catch_0
    move-object v3, v8

    .line 47
    move-object v4, v3

    .line 48
    :goto_0
    move-object v7, v4

    .line 49
    :catch_1
    :goto_1
    move-object v8, v2

    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :catch_2
    move-object v3, v8

    .line 53
    move-object v4, v3

    .line 54
    :goto_2
    move-object v7, v4

    .line 55
    goto :goto_1

    .line 56
    :catch_3
    move-object v3, v8

    .line 57
    move-object v4, v3

    .line 58
    :goto_3
    move-object v7, v4

    .line 59
    goto :goto_1

    .line 60
    :catch_4
    move-object v3, v8

    .line 61
    move-object v4, v3

    .line 62
    move-object v7, v4

    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_1
    :try_start_2
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 69
    move-object v2, v8

    .line 70
    :goto_4
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 73
    .line 74
    .line 75
    const/16 v6, 0x400

    .line 76
    .line 77
    :try_start_4
    new-array v7, v6, [B

    .line 78
    .line 79
    :goto_5
    invoke-virtual {v3, v7, v1, v6}, Ljava/io/InputStream;->read([BII)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    const/4 v10, -0x1

    .line 84
    if-eq v9, v10, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4, v7, v1, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 87
    .line 88
    .line 89
    goto :goto_5

    .line 90
    :catch_5
    move-object v7, v8

    .line 91
    goto :goto_1

    .line 92
    :catch_6
    move-object v7, v8

    .line 93
    goto :goto_1

    .line 94
    :catch_7
    move-object v7, v8

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    array-length v7, v6

    .line 101
    if-lez v7, :cond_4

    .line 102
    .line 103
    invoke-static {v6}, Lcom/frostwire/jlibtorrent/TorrentInfo;->a([B)Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lcom/frostwire/jlibtorrent/TorrentInfo;->b()Lcom/frostwire/jlibtorrent/FileStorage;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    iget-object v7, v7, Lcom/frostwire/jlibtorrent/FileStorage;->a:Lcom/frostwire/jlibtorrent/swig/file_storage;

    .line 112
    .line 113
    iget-wide v9, v7, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 114
    .line 115
    invoke-static {v9, v10, v7}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_num_files(JLcom/frostwire/jlibtorrent/swig/file_storage;)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    const-wide/16 v10, 0x0

    .line 120
    .line 121
    move v12, v1

    .line 122
    :goto_6
    if-ge v12, v9, :cond_3

    .line 123
    .line 124
    iget-wide v13, v7, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 125
    .line 126
    invoke-static {v13, v14, v7, v12}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_file_size(JLcom/frostwire/jlibtorrent/swig/file_storage;I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v13

    .line 130
    add-long/2addr v10, v13

    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_3
    new-instance v7, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 137
    .line 138
    .line 139
    :try_start_5
    iput-object v6, v7, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;->a:Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 140
    .line 141
    iget-object v6, v6, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 142
    .line 143
    iget-wide v8, v6, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 144
    .line 145
    invoke-static {v8, v9, v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_info_name(JLcom/frostwire/jlibtorrent/swig/torrent_info;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iput-object v6, v7, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;->b:Ljava/lang/String;

    .line 150
    .line 151
    iput-wide v10, v7, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;->c:J
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :catch_8
    move-object v4, v8

    .line 155
    goto :goto_0

    .line 156
    :catch_9
    move-object v4, v8

    .line 157
    goto :goto_2

    .line 158
    :catch_a
    move-object v4, v8

    .line 159
    goto :goto_3

    .line 160
    :goto_7
    move-object v2, v8

    .line 161
    :goto_8
    move-object v8, v7

    .line 162
    :cond_4
    if-eqz v4, :cond_5

    .line 163
    .line 164
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 165
    .line 166
    .line 167
    :catch_b
    :cond_5
    if-eqz v3, :cond_6

    .line 168
    .line 169
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 170
    .line 171
    .line 172
    :catch_c
    :cond_6
    if-eqz v2, :cond_7

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    .line 176
    .line 177
    :cond_7
    if-nez v8, :cond_8

    .line 178
    .line 179
    iput v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 180
    .line 181
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_a

    .line 184
    :cond_8
    const/16 v1, 0xd

    .line 185
    .line 186
    iput v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_9
    const-string v2, "torrent:"

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_a

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    :goto_9
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v1, v8, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;->b:Ljava/lang/String;

    .line 213
    .line 214
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->g1:Ljava/lang/String;

    .line 215
    .line 216
    iget-wide v1, v8, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;->c:J

    .line 217
    .line 218
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 219
    .line 220
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_b

    .line 225
    .line 226
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->h1:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v1, v8, Lcom/mycompany/app/torrent/TorrentUtil$TorrentItem;->a:Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 229
    .line 230
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i1:Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 231
    .line 232
    :cond_b
    :goto_a
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 233
    .line 234
    if-nez v0, :cond_c

    .line 235
    .line 236
    :goto_b
    return-void

    .line 237
    :cond_c
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl$40$1;

    .line 238
    .line 239
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$40$1;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$40;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 243
    .line 244
    .line 245
    return-void
.end method
