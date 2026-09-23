.class public final Lcom/google/android/gms/cast/internal/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/cast/internal/zzp;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzp;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
