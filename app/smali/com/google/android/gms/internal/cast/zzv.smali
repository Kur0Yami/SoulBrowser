.class final Lcom/google/android/gms/internal/cast/zzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzr;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JIJJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzy;->b()Lcom/google/android/gms/internal/cast/zzaa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/cast/zzcp;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzcp;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-wide p2, v1, Lcom/google/android/gms/internal/cast/zzcp;->b:J

    .line 13
    .line 14
    iput p4, v1, Lcom/google/android/gms/internal/cast/zzcp;->c:I

    .line 15
    .line 16
    iput-wide p5, v1, Lcom/google/android/gms/internal/cast/zzcp;->d:J

    .line 17
    .line 18
    iput-wide p7, v1, Lcom/google/android/gms/internal/cast/zzcp;->e:J

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/internal/cast/zzcq;

    .line 21
    .line 22
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzcq;-><init>(Lcom/google/android/gms/internal/cast/zzcp;)V

    .line 23
    .line 24
    .line 25
    iget-wide p2, v0, Lcom/google/android/gms/internal/cast/zzaa;->h:J

    .line 26
    .line 27
    iput-wide p2, p1, Lcom/google/android/gms/internal/cast/zzcq;->f:J

    .line 28
    .line 29
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/zzaa;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b(Lcom/google/android/gms/cast/MediaStatus;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzy;->b()Lcom/google/android/gms/internal/cast/zzaa;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/cast/zzs;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzs;-><init>(Lcom/google/android/gms/cast/MediaStatus;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/cast/zzt;

    .line 16
    .line 17
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzt;-><init>(Lcom/google/android/gms/internal/cast/zzs;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzaa;->m:Lcom/google/android/gms/internal/cast/zzt;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, v1, Lcom/google/android/gms/internal/cast/zzt;->a:I

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-wide v1, v0, Lcom/google/android/gms/internal/cast/zzaa;->h:J

    .line 31
    .line 32
    iput-wide v1, p1, Lcom/google/android/gms/internal/cast/zzt;->c:J

    .line 33
    .line 34
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzaa;->m:Lcom/google/android/gms/internal/cast/zzt;

    .line 35
    .line 36
    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzcr;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzcr;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/cast/zzcs;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzcs;-><init>(Lcom/google/android/gms/internal/cast/zzcr;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzy;->a(Lcom/google/android/gms/internal/cast/zzcs;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzv;->a:Lcom/google/android/gms/internal/cast/zzy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzy;->b()Lcom/google/android/gms/internal/cast/zzaa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzaa;->u:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/cast/zzaa;->u:I

    .line 12
    .line 13
    return-void
.end method
