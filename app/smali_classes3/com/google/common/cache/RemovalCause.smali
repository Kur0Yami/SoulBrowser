.class public abstract enum Lcom/google/common/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/cache/RemovalCause;

.field public static final enum f:Lcom/google/common/cache/RemovalCause;

.field public static final enum g:Lcom/google/common/cache/RemovalCause;

.field public static final enum h:Lcom/google/common/cache/RemovalCause;

.field public static final enum i:Lcom/google/common/cache/RemovalCause;

.field public static final synthetic j:[Lcom/google/common/cache/RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/cache/RemovalCause$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/cache/RemovalCause$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/cache/RemovalCause;->c:Lcom/google/common/cache/RemovalCause;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/cache/RemovalCause$2;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/common/cache/RemovalCause$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/common/cache/RemovalCause;->f:Lcom/google/common/cache/RemovalCause;

    .line 14
    .line 15
    new-instance v2, Lcom/google/common/cache/RemovalCause$3;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/google/common/cache/RemovalCause$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/google/common/cache/RemovalCause;->g:Lcom/google/common/cache/RemovalCause;

    .line 21
    .line 22
    new-instance v3, Lcom/google/common/cache/RemovalCause$4;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/google/common/cache/RemovalCause$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lcom/google/common/cache/RemovalCause;->h:Lcom/google/common/cache/RemovalCause;

    .line 28
    .line 29
    new-instance v4, Lcom/google/common/cache/RemovalCause$5;

    .line 30
    .line 31
    invoke-direct {v4}, Lcom/google/common/cache/RemovalCause$5;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lcom/google/common/cache/RemovalCause;->i:Lcom/google/common/cache/RemovalCause;

    .line 35
    .line 36
    const/4 v5, 0x5

    .line 37
    new-array v5, v5, [Lcom/google/common/cache/RemovalCause;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    aput-object v0, v5, v6

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aput-object v1, v5, v0

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    aput-object v2, v5, v0

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    aput-object v3, v5, v0

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    aput-object v4, v5, v0

    .line 53
    .line 54
    sput-object v5, Lcom/google/common/cache/RemovalCause;->j:[Lcom/google/common/cache/RemovalCause;

    .line 55
    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/RemovalCause;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/RemovalCause;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/cache/RemovalCause;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/RemovalCause;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/cache/RemovalCause;->j:[Lcom/google/common/cache/RemovalCause;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/cache/RemovalCause;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/cache/RemovalCause;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method
