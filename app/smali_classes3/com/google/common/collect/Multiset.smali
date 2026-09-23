.class public interface abstract Lcom/google/common/collect/Multiset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multiset$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract A(ILjava/lang/Object;)Z
.end method

.method public abstract G0(Ljava/lang/Object;)I
.end method

.method public abstract Q(Ljava/lang/Object;)I
.end method

.method public abstract T(ILjava/lang/Object;)I
.end method

.method public abstract add(ILjava/lang/Object;)I
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract j()Ljava/util/Set;
.end method
