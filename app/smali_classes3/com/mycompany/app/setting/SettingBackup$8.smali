.class Lcom/mycompany/app/setting/SettingBackup$8;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$8;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$8;->c:Lcom/mycompany/app/setting/SettingBackup;

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
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;->f:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/mycompany/app/setting/SettingBackup;->O0(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget p1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    sget p1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
