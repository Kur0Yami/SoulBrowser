.class Landroidx/documentfile/provider/SingleDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/Uri;


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v3, "mime_type"

    .line 14
    .line 15
    invoke-static {v0, v1, v3}, Landroidx/documentfile/provider/DocumentsContractApi19;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    return v2
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "_display_name"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "mime_type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "vnd.android.document/directory"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "mime_type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "vnd.android.document/directory"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public final f()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "last_modified"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final g()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "_size"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
