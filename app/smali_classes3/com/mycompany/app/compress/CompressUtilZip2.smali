.class public Lcom/mycompany/app/compress/CompressUtilZip2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/lingala/zip4j/core/ZipFile;


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1

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
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->f()Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

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
    goto :goto_2

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/core/ZipFile;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/core/ZipFile;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_6

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    goto :goto_4

    .line 31
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lnet/lingala/zip4j/model/FileHeader;

    .line 36
    .line 37
    iget-object p0, p0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lnet/lingala/zip4j/core/ZipFile;->c(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0}, Lnet/lingala/zip4j/core/ZipFile;->e(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/16 p0, 0x200

    .line 48
    .line 49
    new-array p1, p0, [B

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1, p0}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    const-string p1, " - Wrong Password?"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :goto_1
    iget p0, p0, Lnet/lingala/zip4j/exception/ZipException;->c:I

    .line 85
    .line 86
    const/4 p1, 0x5

    .line 87
    if-ne p0, p1, :cond_4

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    .line 94
    .line 95
    :catch_2
    :goto_2
    return v1

    .line 96
    :catch_3
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 100
    .line 101
    .line 102
    :catch_4
    :cond_6
    :goto_4
    const/4 p0, 0x1

    .line 103
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    return v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 15
    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/core/ZipFile;->h(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Lnet/lingala/zip4j/core/ZipFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :cond_2
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catch_0
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 42
    .line 43
    return v1
.end method
