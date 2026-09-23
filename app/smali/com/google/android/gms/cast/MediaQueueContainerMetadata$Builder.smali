.class public Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->c:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->g:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->i:D

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->a:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 24
    .line 25
    return-void
.end method
