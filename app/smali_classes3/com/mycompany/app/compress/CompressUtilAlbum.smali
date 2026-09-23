.class public Lcom/mycompany/app/compress/CompressUtilAlbum;
.super Lcom/mycompany/app/compress/CompressUtilZip;
.source "SourceFile"


# virtual methods
.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/data/DataList;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final j(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/data/DataList;->e(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final k(I)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/mycompany/app/data/DataList;->a:Ljava/util/List;

    .line 12
    .line 13
    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method
