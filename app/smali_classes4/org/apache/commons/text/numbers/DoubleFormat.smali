.class public final enum Lorg/apache/commons/text/numbers/DoubleFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/numbers/DoubleFormat$Builder;,
        Lorg/apache/commons/text/numbers/DoubleFormat$ScientificDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$PlainDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$EngineeringDoubleFormat;,
        Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/numbers/DoubleFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lorg/apache/commons/text/numbers/DoubleFormat;


# instance fields
.field public final c:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/commons/text/numbers/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lorg/apache/commons/text/numbers/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string v3, "PLAIN"

    .line 10
    .line 11
    invoke-direct {v0, v3, v2, v1}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 15
    .line 16
    new-instance v3, Lorg/apache/commons/text/numbers/a;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, v4}, Lorg/apache/commons/text/numbers/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v5, "SCIENTIFIC"

    .line 23
    .line 24
    invoke-direct {v1, v5, v4, v3}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 28
    .line 29
    new-instance v5, Lorg/apache/commons/text/numbers/a;

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    invoke-direct {v5, v6}, Lorg/apache/commons/text/numbers/a;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v7, "ENGINEERING"

    .line 36
    .line 37
    invoke-direct {v3, v7, v6, v5}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 41
    .line 42
    new-instance v7, Lorg/apache/commons/text/numbers/a;

    .line 43
    .line 44
    const/4 v8, 0x3

    .line 45
    invoke-direct {v7, v8}, Lorg/apache/commons/text/numbers/a;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const-string v9, "MIXED"

    .line 49
    .line 50
    invoke-direct {v5, v9, v8, v7}, Lorg/apache/commons/text/numbers/DoubleFormat;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    .line 51
    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    new-array v7, v7, [Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 55
    .line 56
    aput-object v0, v7, v2

    .line 57
    .line 58
    aput-object v1, v7, v4

    .line 59
    .line 60
    aput-object v3, v7, v6

    .line 61
    .line 62
    aput-object v5, v7, v8

    .line 63
    .line 64
    sput-object v7, Lorg/apache/commons/text/numbers/DoubleFormat;->f:[Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/apache/commons/text/numbers/DoubleFormat;->c:Ljava/util/function/Function;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/numbers/DoubleFormat;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/numbers/DoubleFormat;->f:[Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/text/numbers/DoubleFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/text/numbers/DoubleFormat;

    .line 8
    .line 9
    return-object v0
.end method
