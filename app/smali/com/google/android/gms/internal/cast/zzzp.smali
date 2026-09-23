.class final Lcom/google/android/gms/internal/cast/zzzp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/cast/zzzp;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzza;

.field public final b:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzzp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzzp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzzp;->c:Lcom/google/android/gms/internal/cast/zzzp;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzzp;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/zzza;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzza;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzzp;->a:Lcom/google/android/gms/internal/cast/zzza;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzzs;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzym;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzzp;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/cast/zzzs;

    .line 12
    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzzp;->a:Lcom/google/android/gms/internal/cast/zzza;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/cast/zzzu;->a:Lcom/google/android/gms/internal/cast/zzaaf;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/cast/zzyd;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    sget v2, Lcom/google/android/gms/internal/cast/zzxb;->a:I

    .line 31
    .line 32
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzza;->a:Lcom/google/android/gms/internal/cast/zzyz;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/zzyz;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzzf;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzzf;->zza()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    sget v2, Lcom/google/android/gms/internal/cast/zzxb;->a:I

    .line 45
    .line 46
    sget v2, Lcom/google/android/gms/internal/cast/zzzo;->a:I

    .line 47
    .line 48
    sget v2, Lcom/google/android/gms/internal/cast/zzyw;->a:I

    .line 49
    .line 50
    sget-object v2, Lcom/google/android/gms/internal/cast/zzzu;->a:Lcom/google/android/gms/internal/cast/zzaaf;

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzzf;->zzc()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-eq v3, v4, :cond_1

    .line 60
    .line 61
    sget-object v3, Lcom/google/android/gms/internal/cast/zzxu;->a:Lcom/google/android/gms/internal/cast/zzxt;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v3, 0x0

    .line 65
    :goto_0
    sget v4, Lcom/google/android/gms/internal/cast/zzze;->a:I

    .line 66
    .line 67
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzzl;->k(Lcom/google/android/gms/internal/cast/zzzf;Lcom/google/android/gms/internal/cast/zzaad;Lcom/google/android/gms/internal/cast/zzxt;)Lcom/google/android/gms/internal/cast/zzzl;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    sget v2, Lcom/google/android/gms/internal/cast/zzxb;->a:I

    .line 73
    .line 74
    sget-object v2, Lcom/google/android/gms/internal/cast/zzzu;->a:Lcom/google/android/gms/internal/cast/zzaaf;

    .line 75
    .line 76
    sget-object v3, Lcom/google/android/gms/internal/cast/zzxu;->a:Lcom/google/android/gms/internal/cast/zzxt;

    .line 77
    .line 78
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzzf;->zzb()Lcom/google/android/gms/internal/cast/zzzi;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v3, Lcom/google/android/gms/internal/cast/zzzm;

    .line 83
    .line 84
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/cast/zzzm;-><init>(Lcom/google/android/gms/internal/cast/zzaad;Lcom/google/android/gms/internal/cast/zzzi;)V

    .line 85
    .line 86
    .line 87
    move-object v1, v3

    .line 88
    :goto_1
    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/google/android/gms/internal/cast/zzzs;

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_3
    return-object v1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 99
    .line 100
    const-string v0, "messageType"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method
