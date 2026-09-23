.class public interface abstract Lcom/google/common/graph/Network;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/SuccessorsFunction;
.implements Lcom/google/common/graph/PredecessorsFunction;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/SuccessorsFunction<",
        "TN;>;",
        "Lcom/google/common/graph/PredecessorsFunction<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/Set;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/util/Set;
.end method

.method public abstract h()Z
.end method

.method public abstract i(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
.end method
