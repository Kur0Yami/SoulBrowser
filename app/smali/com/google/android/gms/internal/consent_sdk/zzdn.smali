.class abstract Lcom/google/android/gms/internal/consent_sdk/zzdn;
.super Lcom/google/android/gms/internal/consent_sdk/zzdc;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->f:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 9
    .line 10
    const v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->i:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->g:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_7

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdn;->c(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->g:Ljava/lang/String;

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 21
    .line 22
    move v4, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdn;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 29
    .line 30
    :goto_1
    if-ne v4, v0, :cond_2

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-le v4, v1, :cond_0

    .line 41
    .line 42
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-ge v0, v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    :cond_3
    if-ge v0, v1, :cond_4

    .line 51
    .line 52
    add-int/lit8 v4, v1, -0x1

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    :cond_4
    iget v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->i:I

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    if-ne v4, v5, :cond_5

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->h:I

    .line 67
    .line 68
    if-le v1, v0, :cond_6

    .line 69
    .line 70
    add-int/lit8 v2, v1, -0x1

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    add-int/2addr v4, v2

    .line 77
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->i:I

    .line 78
    .line 79
    :cond_6
    :goto_2
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_7
    const/4 v0, 0x3

    .line 89
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->f:I

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    return-object v0
.end method

.method public abstract b(I)I
.end method

.method public abstract c(I)I
.end method
