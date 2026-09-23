.class Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PseudoClassEmpty"
.end annotation


# virtual methods
.method public final a(Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "empty"

    .line 2
    .line 3
    return-object v0
.end method
