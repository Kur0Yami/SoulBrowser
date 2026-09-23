.class abstract enum Lorg/apache/commons/lang3/time/StopWatch$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/time/StopWatch$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lorg/apache/commons/lang3/time/StopWatch$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch$State$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/time/StopWatch$State$1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/lang3/time/StopWatch$State$2;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/apache/commons/lang3/time/StopWatch$State$2;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lorg/apache/commons/lang3/time/StopWatch$State$3;

    .line 12
    .line 13
    invoke-direct {v2}, Lorg/apache/commons/lang3/time/StopWatch$State$3;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lorg/apache/commons/lang3/time/StopWatch$State$4;

    .line 17
    .line 18
    invoke-direct {v3}, Lorg/apache/commons/lang3/time/StopWatch$State$4;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    new-array v4, v4, [Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v0, v4, v5

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput-object v1, v4, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput-object v2, v4, v0

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    aput-object v3, v4, v0

    .line 35
    .line 36
    sput-object v4, Lorg/apache/commons/lang3/time/StopWatch$State;->c:[Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 37
    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/time/StopWatch$State;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/time/StopWatch$State;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->c:[Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/lang3/time/StopWatch$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 8
    .line 9
    return-object v0
.end method
