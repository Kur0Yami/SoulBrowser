.class public abstract Lcom/google/common/base/Optional;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public static a()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Absent;->c:Lcom/google/common/base/Absent;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/Present;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract c(Lcom/google/common/collect/FluentIterable;)Ljava/lang/Object;
.end method

.method public abstract d()Ljava/lang/Object;
.end method
