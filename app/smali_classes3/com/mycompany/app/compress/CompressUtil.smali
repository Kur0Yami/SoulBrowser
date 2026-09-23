.class public Lcom/mycompany/app/compress/CompressUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/compress/CompressUtil$CompressListener;,
        Lcom/mycompany/app/compress/CompressUtil$CompressSort;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/mycompany/app/compress/CompressUtil;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/mycompany/app/compress/CompressUtil$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/compress/CompressUtil$1;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/mycompany/app/compress/Compress$SortItem;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Lcom/mycompany/app/compress/Compress$SortItem;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    const-string v2, "/"

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v4, 0x1

    .line 28
    if-gt v2, v4, :cond_1

    .line 29
    .line 30
    iput-object p0, v0, Lcom/mycompany/app/compress/Compress$SortItem;->a:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/compress/Compress$SortItem;->b:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p0, v0, Lcom/mycompany/app/compress/Compress$SortItem;->c:Ljava/lang/String;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-static {v4, v3, p0}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v2, 0x2f

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v4, -0x1

    .line 49
    if-eq v2, v4, :cond_4

    .line 50
    .line 51
    add-int/lit8 v4, v2, 0x1

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-lt v4, v5, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iput-object p0, v0, Lcom/mycompany/app/compress/Compress$SortItem;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Lcom/mycompany/app/compress/Compress$SortItem;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput-object p0, v0, Lcom/mycompany/app/compress/Compress$SortItem;->c:Ljava/lang/String;

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_4
    :goto_1
    iput-object p0, v0, Lcom/mycompany/app/compress/Compress$SortItem;->a:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, v0, Lcom/mycompany/app/compress/Compress$SortItem;->b:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p0, v0, Lcom/mycompany/app/compress/Compress$SortItem;->c:Ljava/lang/String;

    .line 80
    .line 81
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUri;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :catch_0
    :cond_1
    const-string v0, ".viewer"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    .line 44
    :catch_1
    :cond_2
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "/"

    .line 54
    .line 55
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v4, 0xa

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    :try_start_2
    sget-object v6, Lcom/mycompany/app/compress/CompressUtil;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    new-instance v0, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-le v1, v4, :cond_4

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    .line 125
    .line 126
    :catch_2
    :cond_4
    const/4 v0, 0x1

    .line 127
    invoke-static {p0, p1, v3, v0, v5}, Lcom/mycompany/app/main/MainUri;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    const/4 v0, 0x0

    .line 139
    if-eqz p0, :cond_6

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    const-string p0, "content://"

    .line 143
    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_7

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_7
    :try_start_3
    const-string p0, "UTF-8"

    .line 152
    .line 153
    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const-string v1, "file://"

    .line 158
    .line 159
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    const/4 v2, -0x1

    .line 164
    if-ne v1, v2, :cond_8

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 171
    :catch_3
    :goto_0
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_9

    .line 176
    .line 177
    :goto_1
    return-object v3

    .line 178
    :cond_9
    return-object p1
.end method

.method public static d(Ljava/io/InputStream;I)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-array v1, p1, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-lez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, -0x1

    .line 15
    if-eq v3, v4, :cond_1

    .line 16
    .line 17
    add-int/2addr v2, v3

    .line 18
    sub-int/2addr p1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const-string v2, "CompressUtil"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "size = "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :cond_2
    move-object v0, v1

    .line 45
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    :catch_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;Lnet/lingala/zip4j/io/ZipInputStream;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/compress/CompressUtil$CompressListener;)Z
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v6, 0x0

    .line 6
    if-nez v1, :cond_9

    .line 7
    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v3, p4, v1

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p2, v4, p3}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_9

    .line 29
    .line 30
    return v7

    .line 31
    :cond_1
    invoke-static {p0, p2, v4, p3}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->b:Landroid/net/Uri;

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-object p0, v4

    .line 49
    if-eqz p6, :cond_3

    .line 50
    .line 51
    invoke-interface {p6, p3}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->c(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    if-eqz p6, :cond_5

    .line 55
    .line 56
    invoke-interface {p6}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->isCancelled()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    :cond_4
    :goto_0
    move v6, v7

    .line 63
    goto :goto_2

    .line 64
    :cond_5
    if-nez p0, :cond_6

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_6
    const/16 p2, 0x2000

    .line 68
    .line 69
    :try_start_1
    new-array v8, p2, [B

    .line 70
    .line 71
    :goto_1
    invoke-virtual {p1, v8, v6, p2}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, -0x1

    .line 76
    if-eq v3, v4, :cond_4

    .line 77
    .line 78
    if-eqz p6, :cond_7

    .line 79
    .line 80
    invoke-interface {p6}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->isCancelled()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_7

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    invoke-virtual {p0, v8, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    .line 89
    .line 90
    int-to-long v3, v3

    .line 91
    add-long/2addr v3, v1

    .line 92
    if-eqz p6, :cond_8

    .line 93
    .line 94
    move-object v5, p3

    .line 95
    move-wide v1, p4

    .line 96
    move-object v0, p6

    .line 97
    invoke-interface/range {v0 .. v5}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->b(JJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .line 99
    .line 100
    :cond_8
    move-wide v1, v3

    .line 101
    goto :goto_1

    .line 102
    :catch_1
    :goto_2
    if-eqz p0, :cond_9

    .line 103
    .line 104
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    .line 106
    .line 107
    :catch_2
    :cond_9
    :goto_3
    return v6
.end method
