.class public final enum Lcom/google/common/collect/BoundType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/BoundType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/collect/BoundType;

.field public static final enum f:Lcom/google/common/collect/BoundType;

.field public static final synthetic g:[Lcom/google/common/collect/BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    const-string v1, "OPEN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 10
    .line 11
    new-instance v1, Lcom/google/common/collect/BoundType;

    .line 12
    .line 13
    const-string v3, "CLOSED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/google/common/collect/BoundType;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lcom/google/common/collect/BoundType;->g:[Lcom/google/common/collect/BoundType;

    .line 29
    .line 30
    return-void
.end method

.method public static a(Z)Lcom/google/common/collect/BoundType;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 7
    .line 8
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/BoundType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/collect/BoundType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/BoundType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->g:[Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/collect/BoundType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/collect/BoundType;

    .line 8
    .line 9
    return-object v0
.end method
