.class final Lcom/google/android/gms/internal/drive/zzjq;
.super Lcom/google/android/gms/internal/drive/zzjo;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# virtual methods
.method public final a(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->c:I

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->a:I

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->b:I

    .line 12
    .line 13
    add-int/2addr v1, v2

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->a:I

    .line 15
    .line 16
    if-le v1, p1, :cond_0

    .line 17
    .line 18
    sub-int p1, v1, p1

    .line 19
    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->b:I

    .line 21
    .line 22
    sub-int/2addr v1, p1

    .line 23
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->a:I

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->b:I

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkq;

    .line 31
    .line 32
    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkq;

    .line 39
    .line 40
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
