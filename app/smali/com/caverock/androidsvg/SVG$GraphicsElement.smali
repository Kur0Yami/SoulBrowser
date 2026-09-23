.class abstract Lcom/caverock/androidsvg/SVG$GraphicsElement;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GraphicsElement"
.end annotation


# instance fields
.field public n:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->i:Ljava/util/HashSet;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->j:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->k:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->l:Ljava/util/HashSet;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->m:Ljava/util/HashSet;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final k(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-void
.end method
