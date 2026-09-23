.class public Lcom/google/android/gms/cast/MediaQueueData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/cast/MediaQueueData;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueData;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueData;->f:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->g:I

    .line 16
    .line 17
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueData;->h:Ljava/lang/String;

    .line 18
    .line 19
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->j:I

    .line 20
    .line 21
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueData;->k:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->l:I

    .line 24
    .line 25
    const-wide/16 v3, -0x1

    .line 26
    .line 27
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaQueueData;->m:J

    .line 28
    .line 29
    iput-boolean v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->n:Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->a:Lcom/google/android/gms/cast/MediaQueueData;

    .line 32
    .line 33
    return-void
.end method
