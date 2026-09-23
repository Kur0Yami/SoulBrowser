.class public abstract enum Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$2;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy$2;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    sput-object v2, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->c:[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    .line 21
    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->c:[Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    .line 8
    .line 9
    return-object v0
.end method
