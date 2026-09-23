.class Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Box"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    .line 3
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    .line 4
    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 5
    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->a:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    .line 8
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->b:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    .line 9
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->c:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 10
    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->d:F

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    .line 2
    .line 3
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    return v0
.end method

.method public final b()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    .line 2
    .line 3
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "]"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
