.class public Lcom/google/mlkit/vision/text/internal/TextRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6

    .line 1
    const-class v0, Lcom/google/mlkit/vision/text/internal/zzp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/firebase/components/Dependency;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const-class v5, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 12
    .line 13
    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/google/mlkit/vision/text/internal/zzs;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v2, Lcom/google/mlkit/vision/text/internal/zzo;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v5, Lcom/google/firebase/components/Dependency;

    .line 37
    .line 38
    invoke-direct {v5, v3, v4, v0}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v5}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/google/firebase/components/Dependency;

    .line 45
    .line 46
    const-class v5, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 47
    .line 48
    invoke-direct {v0, v3, v4, v5}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzt;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, v2, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v2, 0x2

    .line 66
    new-array v5, v2, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v1, v5, v4

    .line 69
    .line 70
    aput-object v0, v5, v3

    .line 71
    .line 72
    :goto_0
    if-ge v4, v2, :cond_1

    .line 73
    .line 74
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcp;

    .line 75
    .line 76
    aget-object v0, v5, v4

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 84
    .line 85
    const-string v1, "at index "

    .line 86
    .line 87
    invoke-static {v4, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_1
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
