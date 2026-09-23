.class public Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder;
.super Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder<",
        "TI;TT;",
        "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$Builder<",
        "TI;TT;>;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
