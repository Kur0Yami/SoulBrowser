.class abstract Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SvgConditionalElement"
.end annotation


# instance fields
.field public i:Ljava/util/HashSet;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/HashSet;

.field public l:Ljava/util/HashSet;

.field public m:Ljava/util/HashSet;


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->k:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->i:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final getRequiredFeatures()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->i:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->l:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->k:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final l()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->l:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method
