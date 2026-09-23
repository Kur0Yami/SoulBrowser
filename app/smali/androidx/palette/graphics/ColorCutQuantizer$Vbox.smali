.class Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vbox"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final synthetic j:Landroidx/palette/graphics/ColorCutQuantizer;


# direct methods
.method public constructor <init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->j:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 5
    .line 6
    iput p2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->j:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->a:[I

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/palette/graphics/ColorCutQuantizer;->b:[I

    .line 6
    .line 7
    const v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    const/high16 v3, -0x80000000

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iget v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->a:I

    .line 14
    .line 15
    move v6, v3

    .line 16
    move v7, v6

    .line 17
    move v8, v4

    .line 18
    move v9, v5

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    move v5, v7

    .line 22
    :goto_0
    iget v10, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->b:I

    .line 23
    .line 24
    if-gt v9, v10, :cond_6

    .line 25
    .line 26
    aget v10, v1, v9

    .line 27
    .line 28
    aget v11, v0, v10

    .line 29
    .line 30
    add-int/2addr v8, v11

    .line 31
    shr-int/lit8 v11, v10, 0xa

    .line 32
    .line 33
    and-int/lit8 v11, v11, 0x1f

    .line 34
    .line 35
    shr-int/lit8 v12, v10, 0x5

    .line 36
    .line 37
    and-int/lit8 v12, v12, 0x1f

    .line 38
    .line 39
    and-int/lit8 v10, v10, 0x1f

    .line 40
    .line 41
    if-le v11, v5, :cond_0

    .line 42
    .line 43
    move v5, v11

    .line 44
    :cond_0
    if-ge v11, v2, :cond_1

    .line 45
    .line 46
    move v2, v11

    .line 47
    :cond_1
    if-le v12, v6, :cond_2

    .line 48
    .line 49
    move v6, v12

    .line 50
    :cond_2
    if-ge v12, v3, :cond_3

    .line 51
    .line 52
    move v3, v12

    .line 53
    :cond_3
    if-le v10, v7, :cond_4

    .line 54
    .line 55
    move v7, v10

    .line 56
    :cond_4
    if-ge v10, v4, :cond_5

    .line 57
    .line 58
    move v4, v10

    .line 59
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iput v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->d:I

    .line 63
    .line 64
    iput v5, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->e:I

    .line 65
    .line 66
    iput v3, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->f:I

    .line 67
    .line 68
    iput v6, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->g:I

    .line 69
    .line 70
    iput v4, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->h:I

    .line 71
    .line 72
    iput v7, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->i:I

    .line 73
    .line 74
    iput v8, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->c:I

    .line 75
    .line 76
    return-void
.end method

.method public final b()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->e:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget v1, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->g:I

    .line 9
    .line 10
    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->f:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    mul-int/2addr v1, v0

    .line 16
    iget v0, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->i:I

    .line 17
    .line 18
    iget v2, p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->h:I

    .line 19
    .line 20
    sub-int/2addr v0, v2

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    mul-int/2addr v0, v1

    .line 24
    return v0
.end method
