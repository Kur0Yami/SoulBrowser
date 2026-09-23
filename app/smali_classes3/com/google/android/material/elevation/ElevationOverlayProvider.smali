.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    long-to-int v0, v0

    .line 11
    sput v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->b(Landroid/content/Context;IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget v2, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    .line 9
    .line 10
    invoke-static {p1, v2, v1}, Lcom/google/android/material/color/MaterialColors;->b(Landroid/content/Context;II)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sget v3, Lcom/google/android/material/R$attr;->elevationOverlayAccentColor:I

    .line 15
    .line 16
    invoke-static {p1, v3, v1}, Lcom/google/android/material/color/MaterialColors;->b(Landroid/content/Context;II)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 21
    .line 22
    invoke-static {p1, v4, v1}, Lcom/google/android/material/color/MaterialColors;->b(Landroid/content/Context;II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->a:Z

    .line 40
    .line 41
    iput v2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->b:I

    .line 42
    .line 43
    iput v3, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->c:I

    .line 44
    .line 45
    iput v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->d:I

    .line 46
    .line 47
    iput p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->e:F

    .line 48
    .line 49
    return-void
.end method
