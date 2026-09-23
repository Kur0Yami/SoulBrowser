.class public Lcom/google/android/material/color/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [D

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->a:[D

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data
.end method

.method public static a(D)D
    .locals 8

    .line 1
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v2

    mul-double v4, p0, p0

    mul-double/2addr v4, p0

    const-wide v6, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    mul-double/2addr p0, v2

    sub-double/2addr p0, v0

    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double v4, p0, v0

    :goto_0
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, p0

    return-wide v4
.end method
