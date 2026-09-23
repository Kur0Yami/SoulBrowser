.class public Lcom/mycompany/app/glide/SvgDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Lcom/caverock/androidsvg/SVG;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public final b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/caverock/androidsvg/SVG;->b(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/high16 p4, -0x80000000

    .line 8
    .line 9
    if-eq p2, p4, :cond_0

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->g(F)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    if-eq p3, p4, :cond_1

    .line 19
    .line 20
    int-to-float p2, p3

    .line 21
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->f(F)V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance p2, Lcom/bumptech/glide/load/resource/SimpleResource;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 31
    .line 32
    const-string p3, "Cannot load SVG from stream"

    .line 33
    .line 34
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method
