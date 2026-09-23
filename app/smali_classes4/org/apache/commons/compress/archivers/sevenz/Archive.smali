.class Lorg/apache/commons/compress/archivers/sevenz/Archive;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, " pack sizes, "

    .line 2
    .line 3
    const-string v1, " CRCs, "

    .line 4
    .line 5
    const-string v2, "Archive with packed streams starting at offset 0, "

    .line 6
    .line 7
    const-string v3, "(null)"

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v3, v1}, Landroidx/work/impl/workers/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, " folders, "

    .line 14
    .line 15
    const-string v2, " files and null"

    .line 16
    .line 17
    invoke-static {v0, v3, v1, v3, v2}, Landroid/support/v4/media/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
