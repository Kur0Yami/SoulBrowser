.class Lcom/caverock/androidsvg/SVG$Pattern;
.super Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pattern"
.end annotation


# instance fields
.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/Boolean;

.field public r:Landroid/graphics/Matrix;

.field public s:Lcom/caverock/androidsvg/SVG$Length;

.field public t:Lcom/caverock/androidsvg/SVG$Length;

.field public u:Lcom/caverock/androidsvg/SVG$Length;

.field public v:Lcom/caverock/androidsvg/SVG$Length;

.field public w:Ljava/lang/String;


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "pattern"

    .line 2
    .line 3
    return-object v0
.end method
