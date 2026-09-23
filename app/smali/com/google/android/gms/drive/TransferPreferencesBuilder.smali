.class public Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I


# virtual methods
.method public final a()Lcom/google/android/gms/drive/TransferPreferences;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->b:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->c:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;-><init>(IIZ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
