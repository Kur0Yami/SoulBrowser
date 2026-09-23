.class Lcom/mycompany/app/setting/SettingBackup$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$20;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    sget v0, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$20;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v2, p1, Landroidx/activity/result/ActivityResult;->c:I

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :try_start_0
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->f:Landroid/content/Intent;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbad;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/Activity;

    .line 26
    .line 27
    new-instance v4, Lcom/google/android/gms/auth/api/identity/zba;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/auth-api/zbad;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zba;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/auth-api/zbad;->h(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/AuthorizationResult;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;->f:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    :catch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    sget p1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/setting/SettingBackup;->O0(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
