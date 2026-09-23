.class public abstract enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CaseFormat$StringConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/CaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/google/common/base/CaseFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/common/base/CaseFormat$1;

    .line 2
    .line 3
    const-string v1, "LOWER_HYPHEN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/common/base/CaseFormat$2;

    .line 10
    .line 11
    const-string v3, "LOWER_UNDERSCORE"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/common/base/CaseFormat$3;

    .line 18
    .line 19
    new-instance v5, Lcom/google/common/base/CharMatcher$InRange;

    .line 20
    .line 21
    const/16 v6, 0x41

    .line 22
    .line 23
    const/16 v7, 0x5a

    .line 24
    .line 25
    invoke-direct {v5, v6, v7}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CC)V

    .line 26
    .line 27
    .line 28
    const-string v5, "LOWER_CAMEL"

    .line 29
    .line 30
    const/4 v8, 0x2

    .line 31
    invoke-direct {v3, v5, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/google/common/base/CaseFormat$4;

    .line 35
    .line 36
    new-instance v9, Lcom/google/common/base/CharMatcher$InRange;

    .line 37
    .line 38
    invoke-direct {v9, v6, v7}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CC)V

    .line 39
    .line 40
    .line 41
    const-string v6, "UPPER_CAMEL"

    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lcom/google/common/base/CaseFormat$5;

    .line 48
    .line 49
    const-string v9, "UPPER_UNDERSCORE"

    .line 50
    .line 51
    const/4 v10, 0x4

    .line 52
    invoke-direct {v6, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const/4 v9, 0x5

    .line 56
    new-array v9, v9, [Lcom/google/common/base/CaseFormat;

    .line 57
    .line 58
    aput-object v0, v9, v2

    .line 59
    .line 60
    aput-object v1, v9, v4

    .line 61
    .line 62
    aput-object v3, v9, v8

    .line 63
    .line 64
    aput-object v5, v9, v7

    .line 65
    .line 66
    aput-object v6, v9, v10

    .line 67
    .line 68
    sput-object v9, Lcom/google/common/base/CaseFormat;->c:[Lcom/google/common/base/CaseFormat;

    .line 69
    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/base/CaseFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/base/CaseFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/CaseFormat;->c:[Lcom/google/common/base/CaseFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/base/CaseFormat;

    .line 8
    .line 9
    return-object v0
.end method
