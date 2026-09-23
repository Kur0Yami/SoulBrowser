.class public final Lcom/google/android/gms/internal/drive/zzmy;
.super Ljava/lang/Object;


# static fields
.field public static final e:Lcom/google/android/gms/internal/drive/zzmy;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/drive/zzmy;->e:Lcom/google/android/gms/internal/drive/zzmy;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_6

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 13
    .line 14
    aget v2, v2, v1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v3, v3, v1

    .line 19
    .line 20
    ushr-int/lit8 v4, v2, 0x3

    .line 21
    .line 22
    and-int/lit8 v2, v2, 0x7

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-eq v2, v5, :cond_4

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-eq v2, v5, :cond_3

    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    if-eq v2, v5, :cond_2

    .line 34
    .line 35
    const/4 v5, 0x5

    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-interface {p1, v4, v2}, Lcom/google/android/gms/internal/drive/zzns;->z(II)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    .line 50
    sget v0, Lcom/google/android/gms/internal/drive/zzkq;->c:I

    .line 51
    .line 52
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkr;

    .line 53
    .line 54
    const-string v1, "Protocol message tag had invalid wire type."

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/drive/zzns;->u(I)V

    .line 67
    .line 68
    .line 69
    check-cast v3, Lcom/google/android/gms/internal/drive/zzmy;

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/drive/zzmy;->a(Lcom/google/android/gms/internal/drive/zzns;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/drive/zzns;->j(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    check-cast v3, Lcom/google/android/gms/internal/drive/zzjc;

    .line 79
    .line 80
    invoke-interface {p1, v4, v3}, Lcom/google/android/gms/internal/drive/zzns;->D(ILcom/google/android/gms/internal/drive/zzjc;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    check-cast v3, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-interface {p1, v4, v2, v3}, Lcom/google/android/gms/internal/drive/zzns;->w(IJ)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    check-cast v3, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-interface {p1, v4, v2, v3}, Lcom/google/android/gms/internal/drive/zzns;->r(IJ)V

    .line 101
    .line 102
    .line 103
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    :goto_2
    return-void
.end method

.method public final b()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 10
    .line 11
    if-ge v0, v2, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 14
    .line 15
    aget v2, v2, v0

    .line 16
    .line 17
    ushr-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    and-int/lit8 v2, v2, 0x7

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz v2, :cond_5

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq v2, v5, :cond_4

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    if-eq v2, v6, :cond_3

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    if-eq v2, v6, :cond_2

    .line 33
    .line 34
    const/4 v5, 0x5

    .line 35
    if-ne v2, v5, :cond_1

    .line 36
    .line 37
    aget-object v2, v4, v0

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->w(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_1
    add-int/2addr v2, v1

    .line 49
    move v1, v2

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    sget v1, Lcom/google/android/gms/internal/drive/zzkq;->c:I

    .line 54
    .line 55
    new-instance v1, Lcom/google/android/gms/internal/drive/zzkr;

    .line 56
    .line 57
    const-string v2, "Protocol message tag had invalid wire type."

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->g(I)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    shl-int/2addr v2, v5

    .line 71
    aget-object v3, v4, v0

    .line 72
    .line 73
    check-cast v3, Lcom/google/android/gms/internal/drive/zzmy;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzmy;->b()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    :goto_2
    add-int/2addr v3, v2

    .line 80
    add-int/2addr v3, v1

    .line 81
    move v1, v3

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    aget-object v2, v4, v0

    .line 84
    .line 85
    check-cast v2, Lcom/google/android/gms/internal/drive/zzjc;

    .line 86
    .line 87
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzjr;->m(ILcom/google/android/gms/internal/drive/zzjc;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    aget-object v2, v4, v0

    .line 93
    .line 94
    check-cast v2, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->u(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    aget-object v2, v4, v0

    .line 105
    .line 106
    check-cast v2, Ljava/lang/Long;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->g(I)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/drive/zzjr;->A(J)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    goto :goto_2

    .line 121
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    .line 125
    .line 126
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 15
    .line 16
    iget v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 17
    .line 18
    iget v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 19
    .line 20
    if-ne v3, v2, :cond_7

    .line 21
    .line 22
    iget-object v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 23
    .line 24
    move v4, v1

    .line 25
    :goto_0
    if-ge v4, v3, :cond_4

    .line 26
    .line 27
    iget-object v5, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 28
    .line 29
    aget v5, v5, v4

    .line 30
    .line 31
    aget v6, v2, v4

    .line 32
    .line 33
    if-eq v5, v6, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 40
    .line 41
    move v2, v1

    .line 42
    :goto_1
    if-ge v2, v3, :cond_6

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v4, v4, v2

    .line 47
    .line 48
    aget-object v5, p1, v2

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_6
    return v0

    .line 61
    :cond_7
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 2
    .line 3
    add-int/lit16 v1, v0, 0x20f

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x1f

    .line 6
    .line 7
    const/16 v2, 0x11

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v5, v2

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v0, :cond_0

    .line 13
    .line 14
    mul-int/lit8 v5, v5, 0x1f

    .line 15
    .line 16
    iget-object v6, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 17
    .line 18
    aget v6, v6, v4

    .line 19
    .line 20
    add-int/2addr v5, v6

    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-int/2addr v1, v5

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    :goto_1
    if-ge v3, v0, :cond_1

    .line 28
    .line 29
    mul-int/lit8 v2, v2, 0x1f

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 32
    .line 33
    aget-object v4, v4, v3

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    add-int/2addr v2, v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/2addr v1, v2

    .line 44
    return v1
.end method
