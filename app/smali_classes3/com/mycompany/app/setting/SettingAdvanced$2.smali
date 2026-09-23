.class Lcom/mycompany/app/setting/SettingAdvanced$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingAdvanced;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingAdvanced;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingAdvanced$2;->a:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingAdvanced$2;->a:Lcom/mycompany/app/setting/SettingAdvanced;

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
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingAdvanced;->D0()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/mycompany/app/setting/SettingAdvanced;->b2:Z

    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingAdvanced$2;->a:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 4
    .line 5
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingAdvanced;->b2:Z

    .line 6
    .line 7
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingAdvanced;->O0(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
