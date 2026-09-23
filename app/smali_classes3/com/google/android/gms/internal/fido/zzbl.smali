.class public abstract Lcom/google/android/gms/internal/fido/zzbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static c()Lcom/google/android/gms/internal/fido/zzbl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzaz;->c:Lcom/google/android/gms/internal/fido/zzaz;

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;)Lcom/google/android/gms/internal/fido/zzbl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbn;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzbn;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b()Z
.end method
