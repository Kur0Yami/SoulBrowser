.class public abstract enum Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final enum f:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

.field public static final synthetic g:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->c:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 7
    .line 8
    new-instance v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->f:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v2, v0

    .line 23
    .line 24
    sput-object v2, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->g:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->g:[Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 8
    .line 9
    return-object v0
.end method
