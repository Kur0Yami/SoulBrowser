.class public final synthetic Lcom/google/common/primitives/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->c()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method
