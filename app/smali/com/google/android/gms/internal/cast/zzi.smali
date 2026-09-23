.class final synthetic Lcom/google/android/gms/internal/cast/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzj;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzj;Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzi;->c:Lcom/google/android/gms/internal/cast/zzj;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzi;->f:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzi;->g:I

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzi;->h:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 13

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroid/os/Bundle;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzi;->c:Lcom/google/android/gms/internal/cast/zzj;

    .line 5
    .line 6
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/zzj;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v6, v2, Lcom/google/android/gms/internal/cast/zzj;->d:Lcom/google/android/gms/internal/cast/zzce;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    const-string v9, "Must be called from the main thread."

    .line 17
    .line 18
    const-string v10, "register callback = %s"

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzi;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzi;->g:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v0, :cond_0

    .line 26
    .line 27
    if-ne v1, v3, :cond_1

    .line 28
    .line 29
    move v1, v3

    .line 30
    :cond_0
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzj;->e:Lcom/google/android/gms/internal/cast/zzax;

    .line 31
    .line 32
    new-instance v11, Lcom/google/android/gms/internal/cast/zzy;

    .line 33
    .line 34
    invoke-direct {v11, v2, v0, v5}, Lcom/google/android/gms/internal/cast/zzy;-><init>(Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzax;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/cast/zzw;

    .line 38
    .line 39
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/cast/zzw;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->a(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 43
    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/cast/zzx;

    .line 48
    .line 49
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 50
    .line 51
    .line 52
    sget-object v11, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 53
    .line 54
    new-array v12, v8, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v0, v12, v7

    .line 57
    .line 58
    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object v11, v6, Lcom/google/android/gms/internal/cast/zzce;->b:Ljava/util/Set;

    .line 68
    .line 69
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    if-eq v1, v8, :cond_2

    .line 73
    .line 74
    if-ne v1, v3, :cond_3

    .line 75
    .line 76
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/cast/zzj;->e:Lcom/google/android/gms/internal/cast/zzax;

    .line 77
    .line 78
    new-instance v0, Lcom/google/android/gms/internal/cast/zzn;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzi;->h:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzn;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzax;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/google/android/gms/internal/cast/zzl;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzl;-><init>(Lcom/google/android/gms/internal/cast/zzn;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->a(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 91
    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    new-instance p1, Lcom/google/android/gms/internal/cast/zzm;

    .line 96
    .line 97
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzm;-><init>(Lcom/google/android/gms/internal/cast/zzn;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 101
    .line 102
    new-array v1, v8, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object p1, v1, v7

    .line 105
    .line 106
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/zzce;->b:Ljava/util/Set;

    .line 116
    .line 117
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method
