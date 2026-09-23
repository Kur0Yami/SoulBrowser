.class public final Lcom/google/android/gms/internal/fido/zzdv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/internal/fido/zzdz;

.field public static final f:Lcom/google/android/gms/internal/fido/zzdy;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/google/android/gms/internal/fido/zzdz;

.field public d:Lcom/google/android/gms/internal/fido/zzdy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzds;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/fido/zzdv;->e:Lcom/google/android/gms/internal/fido/zzdz;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdt;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/fido/zzdv;->f:Lcom/google/android/gms/internal/fido/zzdy;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->d:Lcom/google/android/gms/internal/fido/zzdy;

    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/fido/zzed;->a:Lcom/google/android/gms/internal/fido/zzdz;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdv;->c:Lcom/google/android/gms/internal/fido/zzdz;

    .line 24
    .line 25
    return-void
.end method
