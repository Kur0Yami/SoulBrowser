.class public final enum Lorg/apache/commons/lang3/arch/Processor$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/arch/Processor$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum g:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum h:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum i:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum j:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final synthetic k:[Lorg/apache/commons/lang3/arch/Processor$Type;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 2
    .line 3
    const-string v1, "AArch64"

    .line 4
    .line 5
    const-string v2, "AARCH_64"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->f:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 12
    .line 13
    new-instance v1, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 14
    .line 15
    const-string v2, "x86"

    .line 16
    .line 17
    const-string v4, "X86"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/apache/commons/lang3/arch/Processor$Type;->g:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 24
    .line 25
    new-instance v2, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 26
    .line 27
    const-string v4, "IA-64"

    .line 28
    .line 29
    const-string v6, "IA_64"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->h:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 36
    .line 37
    new-instance v4, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 38
    .line 39
    const-string v6, "PPC"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    invoke-direct {v4, v6, v8, v6}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Lorg/apache/commons/lang3/arch/Processor$Type;->i:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 46
    .line 47
    new-instance v6, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 48
    .line 49
    const-string v9, "RISC-V"

    .line 50
    .line 51
    const-string v10, "RISC_V"

    .line 52
    .line 53
    const/4 v11, 0x4

    .line 54
    invoke-direct {v6, v10, v11, v9}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v6, Lorg/apache/commons/lang3/arch/Processor$Type;->j:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 58
    .line 59
    new-instance v9, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 60
    .line 61
    const-string v10, "Unknown"

    .line 62
    .line 63
    const-string v12, "UNKNOWN"

    .line 64
    .line 65
    const/4 v13, 0x5

    .line 66
    invoke-direct {v9, v12, v13, v10}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v10, 0x6

    .line 70
    new-array v10, v10, [Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 71
    .line 72
    aput-object v0, v10, v3

    .line 73
    .line 74
    aput-object v1, v10, v5

    .line 75
    .line 76
    aput-object v2, v10, v7

    .line 77
    .line 78
    aput-object v4, v10, v8

    .line 79
    .line 80
    aput-object v6, v10, v11

    .line 81
    .line 82
    aput-object v9, v10, v13

    .line 83
    .line 84
    sput-object v10, Lorg/apache/commons/lang3/arch/Processor$Type;->k:[Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/apache/commons/lang3/arch/Processor$Type;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->k:[Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 8
    .line 9
    return-object v0
.end method
