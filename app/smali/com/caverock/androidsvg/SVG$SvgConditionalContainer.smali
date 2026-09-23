.class abstract Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SvgConditionalContainer"
.end annotation


# instance fields
.field public i:Ljava/util/List;

.field public j:Ljava/util/HashSet;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/HashSet;

.field public m:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->j:Ljava/util/HashSet;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->k:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->l:Ljava/util/HashSet;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->m:Ljava/util/HashSet;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->j:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final getRequiredFeatures()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->j:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->l:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->l:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method
