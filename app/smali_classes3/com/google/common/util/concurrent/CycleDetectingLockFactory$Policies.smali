.class public abstract enum Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Policies"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;",
        ">;",
        "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$2;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$2;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$3;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v0, v3, v4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object v1, v3, v0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aput-object v2, v3, v0

    .line 27
    .line 28
    sput-object v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->c:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 29
    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->c:[Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    .line 8
    .line 9
    return-object v0
.end method
