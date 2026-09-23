.class final Lcom/google/android/gms/internal/fido/zzdx;
.super Lcom/google/android/gms/internal/fido/zzea;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/fido/zzdz;

.field public final b:Lcom/google/android/gms/internal/fido/zzdy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzdv;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Lcom/google/android/gms/internal/fido/zzdv;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/fido/zzdv;->b:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/google/android/gms/internal/fido/zzdv;->c:Lcom/google/android/gms/internal/fido/zzdz;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdx;->a:Lcom/google/android/gms/internal/fido/zzdz;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzdv;->d:Lcom/google/android/gms/internal/fido/zzdy;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdx;->b:Lcom/google/android/gms/internal/fido/zzdy;

    .line 31
    .line 32
    return-void
.end method
