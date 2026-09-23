.class public Lcom/google/android/gms/cast/MediaInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/cast/MediaMetadata;

.field public e:J

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->e:J

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/MediaInfo;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    .line 5
    iget v3, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->b:I

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 10
    .line 11
    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->e:J

    .line 12
    .line 13
    iget-object v8, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->f:Ljava/util/List;

    .line 14
    .line 15
    const/16 v19, 0x0

    .line 16
    .line 17
    const/16 v20, 0x0

    .line 18
    .line 19
    iget-object v2, v0, Lcom/google/android/gms/cast/MediaInfo$Builder;->a:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const-wide/16 v15, -0x1

    .line 28
    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    const/16 v18, 0x0

    .line 32
    .line 33
    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method
