.class public Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;,
        Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;Z)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->k:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->c:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/compress/Compress;->h(Ljava/lang/String;)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    .line 18
    .line 19
    new-instance p1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 20
    .line 21
    iget p2, v2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 22
    .line 23
    iget v0, v2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 24
    .line 25
    iget v1, v2, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->c:I

    .line 26
    .line 27
    invoke-direct {p1, p2, v0, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 31
    .line 32
    invoke-direct {p2, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    new-instance p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    .line 43
    .line 44
    new-instance p1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 45
    .line 46
    invoke-direct {p1, v2, v2, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 50
    .line 51
    invoke-direct {p2, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_1
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .line 59
    .line 60
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    .line 66
    invoke-static {p0, p2}, Lcom/mycompany/app/main/BitmapUtil;->e(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    iget-object p0, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v5, 0x0

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object p0, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move-object p0, v5

    .line 85
    :goto_0
    iget-boolean p1, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->i:Z

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget-object p1, p2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    move p1, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string v4, "image/jpeg"

    .line 100
    .line 101
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    :goto_1
    if-eqz p1, :cond_5

    .line 106
    .line 107
    :try_start_0
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->c()I

    .line 113
    .line 114
    .line 115
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_0
    const/16 v2, 0x5a

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_1
    const/16 v2, 0x10e

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :pswitch_2
    const/16 v2, 0xb4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p0, p1, v2

    .line 132
    .line 133
    const/4 p0, 0x5

    .line 134
    const-string v3, "Can\'t read EXIF tags from file [%s]"

    .line 135
    .line 136
    invoke-static {p0, v5, v3, p1}, Lcom/nostra13/universalimageloader/utils/L;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_2
    :pswitch_3
    new-instance p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 140
    .line 141
    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    new-instance p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 146
    .line 147
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    .line 148
    .line 149
    .line 150
    :goto_3
    iget p1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->a:I

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 155
    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    rem-int/lit16 v0, p1, 0xb4

    .line 159
    .line 160
    if-nez v0, :cond_6

    .line 161
    .line 162
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 163
    .line 164
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 165
    .line 166
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/compress/Compress;->O(IIILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 171
    .line 172
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 173
    .line 174
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/compress/Compress;->O(IIILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_4
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    .line 178
    .line 179
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 180
    .line 181
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    .line 183
    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 184
    .line 185
    invoke-direct {v1, v2, p2, p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v0, v1, p0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->k:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->a(Lcom/mycompany/app/main/MainItem$ViewItem;)Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->a:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
    .locals 10

    .line 1
    iget v0, p1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->b:I

    .line 2
    .line 3
    iget p1, p1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->a:I

    .line 4
    .line 5
    iget-object v1, p2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 6
    .line 7
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_b

    .line 13
    .line 14
    :cond_0
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float p1, p1

    .line 23
    int-to-float v1, v1

    .line 24
    div-float/2addr p1, v1

    .line 25
    float-to-double v2, p1

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    double-to-int p1, v2

    .line 31
    int-to-float v0, v0

    .line 32
    div-float/2addr v0, v1

    .line 33
    float-to-double v0, v0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    double-to-int v0, v0

    .line 39
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    goto/16 :goto_b

    .line 44
    .line 45
    :cond_1
    iget-object v2, p2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 46
    .line 47
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 48
    .line 49
    if-ne v1, v4, :cond_2

    .line 50
    .line 51
    move v1, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_0
    iget v4, p2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->e:I

    .line 55
    .line 56
    iget-object v5, p2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->g:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 57
    .line 58
    iget v6, v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->a:I

    .line 59
    .line 60
    iget v2, v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->b:I

    .line 61
    .line 62
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->f:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 63
    .line 64
    if-ne v5, v7, :cond_4

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    div-int/lit8 v4, p1, 0x2

    .line 69
    .line 70
    div-int/lit8 v5, v0, 0x2

    .line 71
    .line 72
    move v7, v3

    .line 73
    :goto_1
    div-int v8, v4, v7

    .line 74
    .line 75
    if-le v8, v6, :cond_11

    .line 76
    .line 77
    div-int v8, v5, v7

    .line 78
    .line 79
    if-le v8, v2, :cond_11

    .line 80
    .line 81
    mul-int/lit8 v7, v7, 0x2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    div-int v4, p1, v6

    .line 85
    .line 86
    div-int v2, v0, v2

    .line 87
    .line 88
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    goto/16 :goto_9

    .line 93
    .line 94
    :cond_4
    if-nez v4, :cond_9

    .line 95
    .line 96
    if-le v6, v2, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move v9, v6

    .line 100
    move v6, v2

    .line 101
    move v2, v9

    .line 102
    :goto_2
    if-le p1, v0, :cond_7

    .line 103
    .line 104
    :goto_3
    div-int p1, v0, v3

    .line 105
    .line 106
    if-le p1, v6, :cond_13

    .line 107
    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    mul-int/lit8 v3, v3, 0x2

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    :goto_4
    div-int v0, p1, v3

    .line 117
    .line 118
    if-le v0, v2, :cond_13

    .line 119
    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    mul-int/lit8 v3, v3, 0x2

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_9
    and-int/lit8 v5, v4, 0x20

    .line 129
    .line 130
    const/16 v7, 0x20

    .line 131
    .line 132
    const/16 v8, 0x80

    .line 133
    .line 134
    if-ne v5, v7, :cond_b

    .line 135
    .line 136
    if-le p1, v0, :cond_a

    .line 137
    .line 138
    and-int/2addr v4, v8

    .line 139
    if-ne v4, v8, :cond_a

    .line 140
    .line 141
    div-int/lit8 v4, p1, 0x2

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_a
    move v4, p1

    .line 145
    :goto_5
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    goto :goto_6

    .line 158
    :cond_b
    and-int/lit8 v5, v4, 0x40

    .line 159
    .line 160
    const/16 v7, 0x40

    .line 161
    .line 162
    if-ne v5, v7, :cond_d

    .line 163
    .line 164
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    :cond_c
    move v4, p1

    .line 177
    goto :goto_6

    .line 178
    :cond_d
    if-le p1, v0, :cond_c

    .line 179
    .line 180
    and-int/2addr v4, v8

    .line 181
    if-ne v4, v8, :cond_c

    .line 182
    .line 183
    div-int/lit8 v4, p1, 0x2

    .line 184
    .line 185
    :goto_6
    if-eqz v1, :cond_10

    .line 186
    .line 187
    div-int/lit8 v5, v4, 0x2

    .line 188
    .line 189
    div-int/lit8 v7, v0, 0x2

    .line 190
    .line 191
    move v4, v3

    .line 192
    :goto_7
    div-int v8, v5, v4

    .line 193
    .line 194
    if-gt v8, v6, :cond_f

    .line 195
    .line 196
    div-int v8, v7, v4

    .line 197
    .line 198
    if-le v8, v2, :cond_e

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_e
    move v7, v4

    .line 202
    goto :goto_9

    .line 203
    :cond_f
    :goto_8
    mul-int/lit8 v4, v4, 0x2

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_10
    div-int/2addr v4, v6

    .line 207
    div-int v2, v0, v2

    .line 208
    .line 209
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    :cond_11
    :goto_9
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-ge v7, v3, :cond_12

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_12
    move v3, v7

    .line 221
    :goto_a
    div-int v4, p1, v3

    .line 222
    .line 223
    if-gt v4, v2, :cond_14

    .line 224
    .line 225
    div-int v4, v0, v3

    .line 226
    .line 227
    if-le v4, v2, :cond_13

    .line 228
    .line 229
    goto :goto_c

    .line 230
    :cond_13
    :goto_b
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->j:Landroid/graphics/BitmapFactory$Options;

    .line 231
    .line 232
    iput v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 233
    .line 234
    return-object p1

    .line 235
    :cond_14
    :goto_c
    if-eqz v1, :cond_15

    .line 236
    .line 237
    mul-int/lit8 v3, v3, 0x2

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    goto :goto_a
.end method
