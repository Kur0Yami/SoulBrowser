.class final Lcom/google/android/gms/internal/auth/zzfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgj;


# static fields
.field public static final b:Lcom/google/android/gms/internal/auth/zzfn;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfn;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/zzfp;->b:Lcom/google/android/gms/internal/auth/zzfn;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfo;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getInstance"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/android/gms/internal/auth/zzfv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzfp;->b:Lcom/google/android/gms/internal/auth/zzfn;

    .line 24
    .line 25
    :goto_0
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Lcom/google/android/gms/internal/auth/zzfv;

    .line 27
    .line 28
    sget-object v3, Lcom/google/android/gms/internal/auth/zzes;->a:Lcom/google/android/gms/internal/auth/zzes;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object v3, v2, v4

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aput-object v1, v2, v3

    .line 35
    .line 36
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/auth/zzfo;-><init>([Lcom/google/android/gms/internal/auth/zzfv;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzfp;->a:Lcom/google/android/gms/internal/auth/zzfo;

    .line 45
    .line 46
    return-void
.end method
