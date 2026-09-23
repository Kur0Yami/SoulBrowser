.class public Lorg/apache/commons/lang3/Strings$Builder;
.super Lorg/apache/commons/lang3/builder/AbstractSupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/AbstractSupplier<",
        "Lorg/apache/commons/lang3/Strings;",
        "Lorg/apache/commons/lang3/Strings$Builder;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/Strings$CsStrings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/Strings;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
