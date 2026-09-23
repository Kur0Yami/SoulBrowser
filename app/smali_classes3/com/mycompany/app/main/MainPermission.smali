.class public Lcom/mycompany/app/main/MainPermission;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Z

.field public h1:I

.field public i1:Ljava/lang/String;

.field public j1:Z

.field public k1:Z

.field public l1:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final k0(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainPermission;->k1:Z

    .line 3
    .line 4
    const/16 p2, 0x1a

    .line 5
    .line 6
    if-eq p1, p2, :cond_2

    .line 7
    .line 8
    const/16 p2, 0x1b

    .line 9
    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainPermission;->f1:Landroid/content/Context;

    .line 14
    .line 15
    const/4 p2, 0x7

    .line 16
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_3

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/main/MainPermission;->i1:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainPermission;->l1:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$string;->permission_granted:I

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainPermission;->f1:Landroid/content/Context;

    .line 41
    .line 42
    const/4 p2, 0x6

    .line 43
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    sget p1, Lnet/kaki87/soul2/testing/R$string;->permission_granted:I

    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->W0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/mycompany/app/main/MainPermission;->f1:Landroid/content/Context;

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainPermission;->g1:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "EXTRA_TYPE"

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/mycompany/app/main/MainPermission;->h1:I

    .line 27
    .line 28
    const/4 v0, 0x7

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "EXTRA_PATH"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/mycompany/app/main/MainPermission;->i1:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "EXTRA_EXT"

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainPermission;->j1:Z

    .line 55
    .line 56
    :cond_0
    const/16 p1, 0x1a

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 60
    .line 61
    .line 62
    const/16 p1, 0x1b

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/MainPermission$1;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainPermission$1;-><init>(Lcom/mycompany/app/main/MainPermission;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/main/MainPermission;->f1:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/main/MainPermission;->i1:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainPermission;->l1:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainPermission;->l1:Z

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mycompany/app/main/MainPermission;->i1:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainPermission;->j1:Z

    .line 23
    .line 24
    const-string v3, "application/vnd.android.package-archive"

    .line 25
    .line 26
    invoke-static {p0, v1, v3, v0, v2}, Lcom/mycompany/app/main/MainUtil;->y4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainPermission;->k1:Z

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    if-eqz p3, :cond_0

    .line 12
    .line 13
    array-length p1, p3

    .line 14
    const/4 v0, 0x1

    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    aget p1, p3, p2

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    aget p1, p3, v0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    sget p1, Lnet/kaki87/soul2/testing/R$string;->permission_granted:I

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->permission_denied:I

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    if-eqz p3, :cond_1

    .line 38
    .line 39
    array-length p1, p3

    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    aget p1, p3, p2

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    sget p1, Lnet/kaki87/soul2/testing/R$string;->permission_granted:I

    .line 47
    .line 48
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$string;->permission_denied:I

    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainPermission;->g1:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainPermission;->g1:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainPermission;->k1:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainPermission;->k1:Z

    .line 20
    .line 21
    return-void
.end method
