.class public final Lcom/google/api/client/util/Joiner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final wrapped:Lcom/google/common/base/Joiner;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Joiner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/util/Joiner;->wrapped:Lcom/google/common/base/Joiner;

    .line 5
    .line 6
    return-void
.end method

.method public static on(C)Lcom/google/api/client/util/Joiner;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/util/Joiner;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/Joiner;->d(C)Lcom/google/common/base/Joiner;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/google/api/client/util/Joiner;-><init>(Lcom/google/common/base/Joiner;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/Joiner;->wrapped:Lcom/google/common/base/Joiner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
