.class public Lcom/google/android/gms/cast/MediaSeekOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaSeekOptions$Builder;,
        Lcom/google/android/gms/cast/MediaSeekOptions$ResumeState;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Z


# direct methods
.method public synthetic constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->a:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->a:J

    .line 12
    .line 13
    iget-wide v2, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->a:J

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->b:Z

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaSeekOptions;->b:Z

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-boolean v3, p0, Lcom/google/android/gms/cast/MediaSeekOptions;->b:Z

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x4

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v0, v4, v1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v2, v4, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput-object v3, v4, v0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x3

    .line 31
    aput-object v0, v4, v1

    .line 32
    .line 33
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method
