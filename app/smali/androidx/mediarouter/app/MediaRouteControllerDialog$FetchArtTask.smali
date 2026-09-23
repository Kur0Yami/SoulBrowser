.class Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FetchArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/net/Uri;

.field public c:I

.field public d:J

.field public final synthetic e:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->e:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v0, "MediaRouteCtrlDialog"

    .line 26
    .line 27
    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :cond_1
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->a:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_1
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->b:Landroid/net/Uri;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/io/BufferedInputStream;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.resource"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "content"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "file"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/net/URL;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u0:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->e:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 61
    .line 62
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    if-nez p1, :cond_2

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    return-object p1

    .line 76
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "Unable to open: "

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "MediaRouteCtrlDialog"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->a:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->b:Landroid/net/Uri;

    .line 17
    .line 18
    if-eqz v4, :cond_8

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->a(Landroid/net/Uri;)Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-nez v5, :cond_3

    .line 25
    .line 26
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 44
    .line 45
    .line 46
    :cond_2
    return-object v3

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    move-object v3, v5

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :catch_0
    move-exception v6

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    :try_start_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    .line 54
    .line 55
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    .line 60
    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 64
    .line 65
    if-eqz v7, :cond_1

    .line 66
    .line 67
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    if-nez v7, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->a(Landroid/net/Uri;)Ljava/io/BufferedInputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-nez v5, :cond_5

    .line 84
    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    .line 99
    .line 100
    if-eqz v5, :cond_c

    .line 101
    .line 102
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 103
    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_5
    :goto_2
    :try_start_7
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    .line 109
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->e:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 110
    .line 111
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 112
    .line 113
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 114
    .line 115
    invoke-virtual {v7, v8, v9}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k(II)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 120
    .line 121
    div-int/2addr v8, v7

    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :catchall_1
    move-exception p1

    .line 148
    goto :goto_4

    .line 149
    :catch_2
    move-exception v6

    .line 150
    move-object v5, v3

    .line 151
    :goto_3
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v2, p1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 164
    .line 165
    .line 166
    if-eqz v5, :cond_8

    .line 167
    .line 168
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :goto_4
    if-eqz v3, :cond_7

    .line 173
    .line 174
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 175
    .line 176
    .line 177
    :catch_3
    :cond_7
    throw p1

    .line 178
    :catch_4
    :cond_8
    :goto_5
    move-object v4, v3

    .line 179
    :catch_5
    :goto_6
    sget p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u0:I

    .line 180
    .line 181
    if-eqz v4, :cond_9

    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_9

    .line 188
    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v0, "Can\'t use recycled bitmap: "

    .line 192
    .line 193
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_9
    if-eqz v4, :cond_b

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-ge p1, v2, :cond_b

    .line 218
    .line 219
    new-instance p1, Landroidx/palette/graphics/Palette$Builder;

    .line 220
    .line 221
    invoke-direct {p1, v4}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .line 223
    .line 224
    iput v1, p1, Landroidx/palette/graphics/Palette$Builder;->c:I

    .line 225
    .line 226
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->a()Landroidx/palette/graphics/Palette;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object p1, p1, Landroidx/palette/graphics/Palette;->a:Ljava/util/List;

    .line 231
    .line 232
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_a

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_a
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    .line 252
    .line 253
    iget v0, p1, Landroidx/palette/graphics/Palette$Swatch;->d:I

    .line 254
    .line 255
    :goto_7
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->c:I

    .line 256
    .line 257
    :cond_b
    move-object v3, v4

    .line 258
    :catch_6
    :cond_c
    :goto_8
    return-object v3
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->e:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 5
    .line 6
    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->b0:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 7
    .line 8
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->c0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->a:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->b:Landroid/net/Uri;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->d0:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    :goto_0
    iput-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->c0:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iput-object p1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->f0:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    iput-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->d0:Landroid/net/Uri;

    .line 35
    .line 36
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->c:I

    .line 37
    .line 38
    iput p1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g0:I

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->e0:Z

    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->d:J

    .line 48
    .line 49
    sub-long/2addr v2, v4

    .line 50
    const-wide/16 v4, 0x78

    .line 51
    .line 52
    cmp-long v0, v2, v4

    .line 53
    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_1
    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->d:J

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->e:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->e0:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->f0:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iput v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g0:I

    .line 16
    .line 17
    return-void
.end method
