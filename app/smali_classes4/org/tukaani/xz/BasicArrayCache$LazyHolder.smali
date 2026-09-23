.class final Lorg/tukaani/xz/BasicArrayCache$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyHolder"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
