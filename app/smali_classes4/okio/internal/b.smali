.class public final synthetic Lokio/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lokio/internal/ZipEntry;

    .line 2
    .line 3
    sget-object v0, Lokio/internal/ResourceFileSystem;->i:Lokio/Path;

    .line 4
    .line 5
    const-string v0, "entry"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lokio/internal/ZipEntry;->a:Lokio/Path;

    .line 11
    .line 12
    invoke-static {p1}, Lokio/internal/ResourceFileSystem$Companion;->a(Lokio/Path;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
