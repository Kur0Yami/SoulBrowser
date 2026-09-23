.class Lcom/mycompany/app/setting/SettingSecret$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSecret;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecret;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$2;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$2;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSecret;->D0()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingSecret;->b2:Z

    .line 18
    .line 19
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :cond_1
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->d8(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSecret$2;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 4
    .line 5
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingSecret;->b2:Z

    .line 6
    .line 7
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingSecret;->O0(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
