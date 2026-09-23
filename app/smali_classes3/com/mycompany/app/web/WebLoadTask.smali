.class public Lcom/mycompany/app/web/WebLoadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;,
        Lcom/mycompany/app/web/WebLoadTask$LoadTask;,
        Lcom/mycompany/app/web/WebLoadTask$MimagDir;
    }
.end annotation


# static fields
.field public static i:Lcom/mycompany/app/web/WebLoadTask;


# instance fields
.field public a:Z

.field public b:Landroid/webkit/WebView;

.field public c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

.field public d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public static a(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p0, 0x1

    .line 5
    invoke-static {p1, p0}, Lcom/mycompany/app/main/MainUtil;->W3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->f:I

    .line 16
    .line 17
    add-int/2addr p1, p0

    .line 18
    iput p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->f:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string v0, "jpg"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 30
    .line 31
    add-int/2addr p1, p0

    .line 32
    iput p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-string v0, "png"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->b:I

    .line 44
    .line 45
    add-int/2addr p1, p0

    .line 46
    iput p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->b:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    const-string v0, "gif"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->c:I

    .line 58
    .line 59
    add-int/2addr p1, p0

    .line 60
    iput p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->c:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    const-string v0, "webp"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    iget p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 72
    .line 73
    add-int/2addr p1, p0

    .line 74
    iput p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    iget p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->e:I

    .line 78
    .line 79
    add-int/2addr p1, p0

    .line 80
    iput p1, p2, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->e:I

    .line 81
    .line 82
    return-void
.end method

.method public static b(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 1
    const-string p0, "https://www.gstatic.com/images/branding/product/1x/translate_24dp.png"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    const/4 p0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz p3, :cond_6

    .line 16
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-ne p3, v2, :cond_2

    .line 25
    .line 26
    const-string p0, "image-comic.pstatic.net/mobilewebimg/"

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    if-ne p3, p0, :cond_3

    .line 34
    .line 35
    const-string p0, "image-comic.pstatic.net/webtoon/"

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p0, 0x3

    .line 43
    const-string p2, "t1.daumcdn.net/webtoon_episode/"

    .line 44
    .line 45
    if-ne p3, p0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const/4 p0, 0x4

    .line 53
    if-ne p3, p0, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :cond_5
    move v1, v2

    .line 61
    :goto_0
    if-nez v1, :cond_16

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_6
    if-ne p2, p0, :cond_16

    .line 66
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_7

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_7
    const-string p0, "viewimage.php"

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_9

    .line 82
    .line 83
    :cond_8
    :goto_1
    move v1, v2

    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_9
    const-string p0, ".blogspot.com/"

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_a

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_a
    const-string p0, "/data/"

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_b

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_b
    const-string p0, "/data/member/"

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_c

    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_c
    const-string p0, "/data/member_image/"

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_d

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_d
    const-string p0, "/thumb_"

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_e

    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_e
    const-string p0, "/thumb-"

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_f

    .line 142
    .line 143
    const-string p0, "/data/file/origin/"

    .line 144
    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_f

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_f
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_10

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_10
    const/16 p2, 0x3f

    .line 164
    .line 165
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    const/4 p3, -0x1

    .line 170
    if-eq p2, p3, :cond_11

    .line 171
    .line 172
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_11

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_11
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 184
    .line 185
    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_12

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_12
    const-string p2, "png"

    .line 197
    .line 198
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_13

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_13
    const-string p0, "image/*"

    .line 206
    .line 207
    invoke-static {p1, v0, p0}, Landroidx/webkit/URLUtilCompat;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_14

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_14
    const-string p2, "logo_"

    .line 220
    .line 221
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    if-nez p2, :cond_15

    .line 226
    .line 227
    const-string p2, "logo-"

    .line 228
    .line 229
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-nez p2, :cond_15

    .line 234
    .line 235
    const-string p2, "sns_"

    .line 236
    .line 237
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-nez p2, :cond_15

    .line 242
    .line 243
    const-string p2, "sns-"

    .line 244
    .line 245
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    if-eqz p0, :cond_8

    .line 250
    .line 251
    :cond_15
    :goto_2
    if-nez v1, :cond_16

    .line 252
    .line 253
    :goto_3
    return-object v0

    .line 254
    :cond_16
    return-object p1
.end method

.method public static c()Lcom/mycompany/app/web/WebLoadTask;
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/web/WebLoadTask;->i:Lcom/mycompany/app/web/WebLoadTask;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/web/WebLoadTask;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/web/WebLoadTask;->i:Lcom/mycompany/app/web/WebLoadTask;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/web/WebLoadTask;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/mycompany/app/web/WebLoadTask;->i:Lcom/mycompany/app/web/WebLoadTask;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/mycompany/app/web/WebLoadTask;->i:Lcom/mycompany/app/web/WebLoadTask;

    .line 27
    .line 28
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2f

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_3

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lt v2, v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 26
    .line 27
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    if-lt v0, v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->a()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    :cond_2
    return-void

    .line 39
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebLoadTask$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebLoadTask$1;-><init>(Lcom/mycompany/app/web/WebLoadTask;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "document.documentElement.innerHTML"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 51
    .line 52
    const-string v1, "(function(){android.onLoadHtml(document.documentElement.innerHTML);})();"

    .line 53
    .line 54
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :pswitch_0
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->a()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->a()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 44
    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    iput-object v2, p0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->a()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :cond_4
    new-instance v2, Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 63
    .line 64
    invoke-direct {v2, p0, v1, p1}, Lcom/mycompany/app/web/WebLoadTask$LoadTask;-><init>(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method
