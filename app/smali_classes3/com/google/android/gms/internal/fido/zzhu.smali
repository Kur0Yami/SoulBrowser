.class public final Lcom/google/android/gms/internal/fido/zzhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field public static final f:Lcom/google/android/gms/internal/fido/zzhu;


# instance fields
.field public final c:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzhu;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzhu;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/fido/zzhu;->f:Lcom/google/android/gms/internal/fido/zzhu;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/fido/zzhw;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/fido/zzbs;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzbs;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/gms/internal/fido/zzhu;->c:Lcom/google/android/gms/internal/fido/zzbp;

    .line 15
    .line 16
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzhu;->f:Lcom/google/android/gms/internal/fido/zzhu;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzhu;->c:Lcom/google/android/gms/internal/fido/zzbp;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/fido/zzbs;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzbs;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/fido/zzhv;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzhv;->zza()Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    throw v0
.end method
