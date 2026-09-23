.class public final enum Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum h:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum i:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final synthetic j:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 10
    .line 11
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 12
    .line 13
    const-string v3, "NONE_SAFE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 20
    .line 21
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 22
    .line 23
    const-string v5, "IN_SAMPLE_POWER_OF_2"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 30
    .line 31
    new-instance v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 32
    .line 33
    const-string v7, "IN_SAMPLE_INT"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 40
    .line 41
    const-string v9, "EXACTLY"

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->h:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 48
    .line 49
    new-instance v9, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 50
    .line 51
    const-string v11, "EXACTLY_STRETCHED"

    .line 52
    .line 53
    const/4 v12, 0x5

    .line 54
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v9, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->i:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 58
    .line 59
    const/4 v11, 0x6

    .line 60
    new-array v11, v11, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 61
    .line 62
    aput-object v0, v11, v2

    .line 63
    .line 64
    aput-object v1, v11, v4

    .line 65
    .line 66
    aput-object v3, v11, v6

    .line 67
    .line 68
    aput-object v5, v11, v8

    .line 69
    .line 70
    aput-object v7, v11, v10

    .line 71
    .line 72
    aput-object v9, v11, v12

    .line 73
    .line 74
    sput-object v11, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->j:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 75
    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .line 1
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->j:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 8
    .line 9
    return-object v0
.end method
