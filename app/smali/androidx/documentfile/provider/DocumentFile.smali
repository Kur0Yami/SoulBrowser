.class public abstract Landroidx/documentfile/provider/DocumentFile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 1
    new-instance v0, Landroidx/documentfile/provider/SingleDocumentFile;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Landroidx/documentfile/provider/SingleDocumentFile;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p1, v0, Landroidx/documentfile/provider/SingleDocumentFile;->b:Landroid/net/Uri;

    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method
