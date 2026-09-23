.class final Lcom/google/api/client/http/GzipSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newGzipInputStream(Ljava/io/InputStream;)Ljava/util/zip/GZIPInputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 2
    .line 3
    new-instance v1, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
