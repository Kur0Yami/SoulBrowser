.class Lcom/mycompany/app/setting/SettingBackup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$4;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$4;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingBackup;->Z1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    .line 13
    .line 14
    const-string v2, "https://www.googleapis.com/auth/drive.file"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->a()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbad;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/app/Activity;

    .line 42
    .line 43
    new-instance v4, Lcom/google/android/gms/auth/api/identity/zba;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/auth-api/zbad;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zba;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/auth-api/zbad;->g(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lcom/mycompany/app/setting/SettingBackup$8;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingBackup$8;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lcom/mycompany/app/setting/SettingBackup$7;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingBackup$7;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
