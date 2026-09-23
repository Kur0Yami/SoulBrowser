.class public Lcom/google/android/gms/internal/fido/zzdk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZI)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    if-nez p4, :cond_a

    .line 9
    .line 10
    const/4 p4, 0x0

    .line 11
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x5a

    .line 16
    .line 17
    const/16 v2, 0x41

    .line 18
    .line 19
    const/16 v3, 0x7a

    .line 20
    .line 21
    const/16 v4, 0x61

    .line 22
    .line 23
    if-lt v0, v4, :cond_0

    .line 24
    .line 25
    if-le v0, v3, :cond_1

    .line 26
    .line 27
    :cond_0
    if-lt v0, v2, :cond_9

    .line 28
    .line 29
    if-gt v0, v1, :cond_9

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ge v0, v5, :cond_7

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-lt v5, v4, :cond_2

    .line 43
    .line 44
    if-le v5, v3, :cond_5

    .line 45
    .line 46
    :cond_2
    if-lt v5, v2, :cond_3

    .line 47
    .line 48
    if-gt v5, v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/16 v6, 0x30

    .line 52
    .line 53
    if-lt v5, v6, :cond_4

    .line 54
    .line 55
    const/16 v6, 0x39

    .line 56
    .line 57
    if-le v5, v6, :cond_5

    .line 58
    .line 59
    :cond_4
    const/16 v6, 0x5f

    .line 60
    .line 61
    if-ne v5, v6, :cond_6

    .line 62
    .line 63
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    const-string p2, "identifier must contain only ASCII letters, digits or underscore: "

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p2

    .line 78
    :cond_7
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdk;->a:Ljava/lang/String;

    .line 79
    .line 80
    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzdk;->b:Ljava/lang/Class;

    .line 81
    .line 82
    iput-boolean p3, p0, Lcom/google/android/gms/internal/fido/zzdk;->c:Z

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    :goto_2
    const/4 p1, 0x5

    .line 88
    if-ge p4, p1, :cond_8

    .line 89
    .line 90
    add-int/lit8 p4, p4, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_8
    return-void

    .line 94
    :cond_9
    const-string p2, "identifier must start with an ASCII letter: "

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2

    .line 106
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string p2, "identifier must not be empty"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdk;->b:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "/"

    .line 16
    .line 17
    invoke-static {v0, v2}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "["

    .line 22
    .line 23
    const-string v3, "]"

    .line 24
    .line 25
    iget-object v4, p0, Lcom/google/android/gms/internal/fido/zzdk;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v4, v2, v1, v3}, Landroid/support/v4/media/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
