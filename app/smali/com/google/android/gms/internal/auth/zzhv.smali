.class public final Lcom/google/android/gms/internal/auth/zzhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzhu;


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/zzdc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcr;->a()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->a()Lcom/google/android/gms/internal/auth/zzcz;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/auth/zzcz;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v1, v0, v3, v3}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    .line 21
    .line 22
    .line 23
    const-string v0, "Aang__create_auth_exception_with_pending_intent"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/auth/zzhv;->a:Lcom/google/android/gms/internal/auth/zzdc;

    .line 30
    .line 31
    const-string v0, "Aang__enable_add_account_restrictions"

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 34
    .line 35
    .line 36
    const-string v0, "Aang__log_missing_gaia_id_event"

    .line 37
    .line 38
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 39
    .line 40
    .line 41
    const-string v0, "Aang__log_obfuscated_gaiaid_status"

    .line 42
    .line 43
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 44
    .line 45
    .line 46
    const-string v0, "Aang__switch_clear_token_to_aang"

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhv;->a:Lcom/google/android/gms/internal/auth/zzdc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
