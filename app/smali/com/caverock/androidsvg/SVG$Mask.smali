.class Lcom/caverock/androidsvg/SVG$Mask;
.super Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mask"
.end annotation


# instance fields
.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Boolean;

.field public p:Lcom/caverock/androidsvg/SVG$Length;

.field public q:Lcom/caverock/androidsvg/SVG$Length;


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mask"

    .line 2
    .line 3
    return-object v0
.end method
