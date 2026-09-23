.class Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$1;->c:Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$1;->c:Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebNestView;->j(ZILcom/mycompany/app/web/WebNestView$WebStyleListener;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, v0, v3}, Lcom/mycompany/app/web/WebNestView;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
