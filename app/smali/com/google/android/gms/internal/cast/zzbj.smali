.class final Lcom/google/android/gms/internal/cast/zzbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzbk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbk;Landroid/app/Activity;Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbj;->a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbj;->b:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbj;->c:Lcom/google/android/gms/internal/cast/zzbk;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbj;->c:Lcom/google/android/gms/internal/cast/zzbk;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/cast/zzbk;->j:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbj;->a:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "googlecast-introOverlayShown"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/internal/cast/zzbi;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/cast/zzbi;-><init>(Lcom/google/android/gms/internal/cast/zzbj;Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbj;->b:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->d(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbj;->c:Lcom/google/android/gms/internal/cast/zzbk;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/cast/zzbk;->j:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbj;->a:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "googlecast-introOverlayShown"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/internal/cast/zzbh;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/cast/zzbh;-><init>(Lcom/google/android/gms/internal/cast/zzbj;Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbj;->b:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->c(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
