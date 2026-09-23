.class public Lcom/mycompany/app/setting/SettingBackup;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic l2:I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/view/MyCoverView;

.field public Z1:Z

.field public a2:I

.field public b2:Ljava/lang/String;

.field public c2:Lcom/mycompany/app/gdrive/GdriveManager;

.field public d2:Z

.field public e2:Lcom/mycompany/app/dialog/DialogListGdrive;

.field public f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

.field public g2:Lcom/mycompany/app/dialog/DialogBackupSave;

.field public h2:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public i2:Ljava/util/concurrent/ExecutorService;

.field public j2:I

.field public final k2:Landroidx/activity/result/ActivityResultRegistry$register$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/mycompany/app/setting/SettingBackup$20;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingBackup$20;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->k2:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 21
    .line 22
    return-void
.end method

.method public static O0(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$12;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$12;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 15

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_sd_card_dark_24:I

    .line 6
    .line 7
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_drive_dark_24:I

    .line 8
    .line 9
    :goto_0
    move v6, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_sd_card_black_24:I

    .line 12
    .line 13
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_drive_black_24:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/mycompany/app/setting/SettingBackup;->j2:I

    .line 18
    .line 19
    new-instance v8, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v0, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 34
    .line 35
    sget v4, Lnet/kaki87/soul2/testing/R$string;->storage:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 46
    .line 47
    sget v11, Lnet/kaki87/soul2/testing/R$string;->backup_import:I

    .line 48
    .line 49
    const/4 v13, 0x0

    .line 50
    const/4 v14, 0x1

    .line 51
    const/4 v10, 0x2

    .line 52
    const/4 v12, 0x0

    .line 53
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 60
    .line 61
    sget v4, Lnet/kaki87/soul2/testing/R$string;->backup_export:I

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x2

    .line 65
    const/4 v3, 0x3

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-object v8
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->e2:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListGdrive;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->e2:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final R0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->e2:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final S0(I)V
    .locals 0

    return-void
.end method

.method public final S0_disabled(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingBackup;->Z1:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/setting/SettingBackup;->a2:I

    .line 20
    .line 21
    :try_start_0
    new-instance p1, Lcom/google/android/gms/common/api/Scope;

    .line 22
    .line 23
    const-string v0, "https://www.googleapis.com/auth/drive.file"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->a()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbad;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/app/Activity;

    .line 51
    .line 52
    new-instance v2, Lcom/google/android/gms/auth/api/identity/zba;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/auth-api/zbad;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zba;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth-api/zbad;->g(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/tasks/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$10;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$10;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$9;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$9;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1, p1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 84
    .line 85
    .line 86
    sget p1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 87
    .line 88
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    new-instance v0, Lcom/mycompany/app/gdrive/GdriveManager;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/gdrive/GdriveManager;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 114
    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    sget p1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 118
    .line 119
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    if-ne p1, v1, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->W0()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    const/4 v0, 0x2

    .line 130
    if-ne p1, v0, :cond_5

    .line 131
    .line 132
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingBackup;->V0(Lcom/mycompany/app/gdrive/GdriveManager;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_0
    return-void
.end method

.method public final T0(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingBackup;->Z1:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/mycompany/app/setting/SettingBackup;->a2:I

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 23
    .line 24
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const v0, -0x50506

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const v0, -0xc6b655

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->setColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    if-nez p2, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :cond_4
    new-instance p2, Lcom/mycompany/app/setting/SettingBackup$6;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingBackup$6;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v0, 0x190

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final U0(Ljava/lang/String;Lcom/mycompany/app/gdrive/GdriveManager;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->R0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingBackup;->d2:Z

    .line 20
    .line 21
    new-instance v0, Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/setting/SettingBackup$15;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingBackup$15;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;-><init>(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;Lcom/mycompany/app/gdrive/GdriveManager;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 32
    .line 33
    new-instance p1, Lcom/mycompany/app/setting/SettingBackup$16;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingBackup$16;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final V0(Lcom/mycompany/app/gdrive/GdriveManager;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->R0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupSave;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 17
    .line 18
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogBackupSave;-><init>(Lcom/mycompany/app/setting/SettingBackup;Lcom/mycompany/app/gdrive/GdriveManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 24
    .line 25
    new-instance p1, Lcom/mycompany/app/setting/SettingBackup$17;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingBackup$17;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final W0()V
    .locals 0

    return-void
.end method

.method public final W0_disabled()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->R0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->Q0()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 14
    .line 15
    new-instance v2, Lcom/mycompany/app/setting/SettingBackup$13;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/mycompany/app/setting/SettingBackup$13;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lcom/mycompany/app/dialog/DialogListGdrive;-><init>(Lcom/mycompany/app/setting/SettingBackup;Lcom/mycompany/app/gdrive/GdriveManager;Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->e2:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/setting/SettingBackup$14;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingBackup$14;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const/16 v2, 0x13

    .line 7
    .line 8
    if-ne p1, v2, :cond_3

    .line 9
    .line 10
    if-ne p2, v1, :cond_8

    .line 11
    .line 12
    if-eqz p3, :cond_8

    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 26
    .line 27
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 44
    .line 45
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {v0, p2}, Lcom/mycompany/app/dialog/DialogBackupSave;->O(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    const/16 v0, 0x9

    .line 61
    .line 62
    if-ne p1, v0, :cond_8

    .line 63
    .line 64
    if-ne p2, v1, :cond_8

    .line 65
    .line 66
    if-nez p3, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 76
    .line 77
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_6

    .line 90
    .line 91
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 92
    .line 93
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    const-string v0, "dat"

    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-nez p3, :cond_7

    .line 114
    .line 115
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_7
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/setting/SettingBackup;->U0(Ljava/lang/String;Lcom/mycompany/app/gdrive/GdriveManager;)V

    .line 128
    .line 129
    .line 130
    :cond_8
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup;->e2:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogNormal;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x13

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x9

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 13
    .line 14
    .line 15
    sget p1, Lnet/kaki87/soul2/testing/R$string;->backup_title:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$1;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/gdrive/DataGdrive;->b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 31
    .line 32
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->i2:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingBackup;->X1:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->Q0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupSave;->dismiss()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingBackup;->g2:Lcom/mycompany/app/dialog/DialogBackupSave;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingBackup;->P0()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingBackup;->X1:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingBackup;->X1:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->e2:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->O:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListGdrive;->o(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup;->Y1:Lcom/mycompany/app/view/MyCoverView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingBackup;->X1:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setSkipDraw(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingBackup$4;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingBackup$4;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
