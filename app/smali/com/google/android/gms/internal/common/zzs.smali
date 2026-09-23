.class final Lcom/google/android/gms/internal/common/zzs;
.super Lcom/google/android/gms/internal/common/zzv;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lcom/google/android/gms/internal/common/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/common/zzp;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/common/zzs;->k:Lcom/google/android/gms/internal/common/zzp;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzv;-><init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzv;->g:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/common/zzr;->b(II)V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-ge p1, v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/common/zzs;->k:Lcom/google/android/gms/internal/common/zzp;

    .line 17
    .line 18
    check-cast v3, Lcom/google/android/gms/internal/common/zzm;

    .line 19
    .line 20
    iget-char v3, v3, Lcom/google/android/gms/internal/common/zzm;->a:C

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, -0x1

    .line 29
    return p1
.end method

.method public final c(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method
