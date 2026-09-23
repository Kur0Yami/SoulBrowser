.class public final Lcom/google/android/gms/internal/drive/zzfd;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzfd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzfd;",
        "Lcom/google/android/gms/internal/drive/zzfd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzfd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhq:Lcom/google/android/gms/internal/drive/zzfd;


# instance fields
.field private zzhd:I

.field private zzhg:J

.field private zzhi:B

.field private zzhn:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/drive/zzfd;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkk;->k(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhn:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhg:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final i(ILcom/google/android/gms/internal/drive/zzkk;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfe;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr p1, v1

    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :pswitch_0
    if-nez p2, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_0
    int-to-byte p1, v1

    .line 21
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfd;->zzhi:B

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-class p2, Lcom/google/android/gms/internal/drive/zzfd;

    .line 37
    .line 38
    monitor-enter p2

    .line 39
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit p2

    .line 54
    return-object p1

    .line 55
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1

    .line 57
    :cond_2
    return-object p1

    .line 58
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_4
    const/4 p1, 0x3

    .line 62
    new-array p1, p1, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string p2, "zzhd"

    .line 65
    .line 66
    aput-object p2, p1, v0

    .line 67
    .line 68
    const-string p2, "zzhn"

    .line 69
    .line 70
    aput-object p2, p1, v1

    .line 71
    .line 72
    const-string p2, "zzhg"

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    aput-object p2, p1, v0

    .line 76
    .line 77
    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u0510\u0000\u0002\u0510\u0001"

    .line 78
    .line 79
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    .line 80
    .line 81
    new-instance v1, Lcom/google/android/gms/internal/drive/zzme;

    .line 82
    .line 83
    invoke-direct {v1, v0, p2, p1}, Lcom/google/android/gms/internal/drive/zzme;-><init>(Lcom/google/android/gms/internal/drive/zzkk;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfd$zza;

    .line 88
    .line 89
    sget-object p2, Lcom/google/android/gms/internal/drive/zzfd;->zzhq:Lcom/google/android/gms/internal/drive/zzfd;

    .line 90
    .line 91
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/drive/zzkk$zza;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfd;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzfd;-><init>()V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
