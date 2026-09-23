.class Lcom/mycompany/app/setting/SettingBackup$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/auth/api/identity/AuthorizationResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$10;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$10;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;->j:Landroid/app/PendingIntent;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    :goto_0
    if-nez v3, :cond_2

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;->f:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 24
    .line 25
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {v0, p1}, Lcom/mycompany/app/setting/SettingBackup;->O0(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v2, Landroidx/activity/result/IntentSenderRequest$Builder;

    .line 37
    .line 38
    invoke-direct {v2, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest$Builder;->a()Landroidx/activity/result/IntentSenderRequest;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingBackup;->k2:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    sget p1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 52
    .line 53
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 54
    .line 55
    .line 56
    sget p1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 57
    .line 58
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
