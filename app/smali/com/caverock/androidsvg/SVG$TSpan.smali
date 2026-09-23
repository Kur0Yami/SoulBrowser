.class Lcom/caverock/androidsvg/SVG$TSpan;
.super Lcom/caverock/androidsvg/SVG$TextPositionedContainer;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TSpan"
.end annotation


# instance fields
.field public r:Lcom/caverock/androidsvg/SVG$TextRoot;


# virtual methods
.method public final e()Lcom/caverock/androidsvg/SVG$TextRoot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$TSpan;->r:Lcom/caverock/androidsvg/SVG$TextRoot;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "tspan"

    .line 2
    .line 3
    return-object v0
.end method
