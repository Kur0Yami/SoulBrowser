.class final enum Lcom/google/common/cache/LocalCache$NullEntry;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NullEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/LocalCache$NullEntry;",
        ">;",
        "Lcom/google/common/cache/ReferenceEntry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/cache/LocalCache$NullEntry;

.field public static final synthetic f:[Lcom/google/common/cache/LocalCache$NullEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/cache/LocalCache$NullEntry;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->c:Lcom/google/common/cache/LocalCache$NullEntry;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lcom/google/common/cache/LocalCache$NullEntry;

    .line 13
    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    sput-object v1, Lcom/google/common/cache/LocalCache$NullEntry;->f:[Lcom/google/common/cache/LocalCache$NullEntry;

    .line 17
    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$NullEntry;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/LocalCache$NullEntry;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/cache/LocalCache$NullEntry;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$NullEntry;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->f:[Lcom/google/common/cache/LocalCache$NullEntry;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$NullEntry;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/cache/LocalCache$NullEntry;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/common/cache/ReferenceEntry;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final e(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final g(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final i()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final j(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final l(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q()Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    return-object p0
.end method
