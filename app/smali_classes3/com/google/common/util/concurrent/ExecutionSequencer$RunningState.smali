.class final enum Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final synthetic f:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 2
    .line 3
    const-string v1, "NOT_RUN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 10
    .line 11
    const-string v3, "CANCELLED"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->c:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 18
    .line 19
    new-instance v3, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 20
    .line 21
    const-string v5, "STARTED"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    new-array v5, v5, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 29
    .line 30
    aput-object v0, v5, v2

    .line 31
    .line 32
    aput-object v1, v5, v4

    .line 33
    .line 34
    aput-object v3, v5, v6

    .line 35
    .line 36
    sput-object v5, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->f:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 37
    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->f:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 8
    .line 9
    return-object v0
.end method
