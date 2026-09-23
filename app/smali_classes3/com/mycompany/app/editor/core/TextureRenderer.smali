.class public Lcom/mycompany/app/editor/core/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:[F

.field public static final l:[F


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/nio/FloatBuffer;

.field public f:Ljava/nio/FloatBuffer;

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/mycompany/app/editor/core/TextureRenderer;->k:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/mycompany/app/editor/core/TextureRenderer;->l:[F

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/TextureRenderer;->f:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/editor/core/TextureRenderer;->i:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    iget v2, p0, Lcom/mycompany/app/editor/core/TextureRenderer;->j:I

    .line 10
    .line 11
    int-to-float v2, v2

    .line 12
    div-float/2addr v1, v2

    .line 13
    iget v2, p0, Lcom/mycompany/app/editor/core/TextureRenderer;->g:I

    .line 14
    .line 15
    int-to-float v2, v2

    .line 16
    iget v3, p0, Lcom/mycompany/app/editor/core/TextureRenderer;->h:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    div-float/2addr v2, v3

    .line 20
    div-float/2addr v2, v1

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpl-float v3, v2, v1

    .line 24
    .line 25
    const/high16 v4, -0x40800000    # -1.0f

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    div-float v3, v4, v2

    .line 30
    .line 31
    div-float v2, v1, v2

    .line 32
    .line 33
    move v8, v2

    .line 34
    move v2, v1

    .line 35
    move v1, v8

    .line 36
    move v8, v4

    .line 37
    move v4, v3

    .line 38
    move v3, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    neg-float v3, v2

    .line 41
    :goto_0
    const/16 v5, 0x8

    .line 42
    .line 43
    new-array v5, v5, [F

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    aput v4, v5, v6

    .line 47
    .line 48
    const/4 v7, 0x1

    .line 49
    aput v3, v5, v7

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    aput v1, v5, v7

    .line 53
    .line 54
    const/4 v7, 0x3

    .line 55
    aput v3, v5, v7

    .line 56
    .line 57
    const/4 v3, 0x4

    .line 58
    aput v4, v5, v3

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    aput v2, v5, v3

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    aput v1, v5, v3

    .line 65
    .line 66
    const/4 v1, 0x7

    .line 67
    aput v2, v5, v1

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    .line 75
    .line 76
    return-void
.end method
