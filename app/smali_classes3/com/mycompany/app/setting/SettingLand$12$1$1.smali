.class Lcom/mycompany/app/setting/SettingLand$12$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand$12$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand$12$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$12$1$1;->c:Lcom/mycompany/app/setting/SettingLand$12$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$12$1$1;->c:Lcom/mycompany/app/setting/SettingLand$12$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$12$1;->c:Lcom/mycompany/app/setting/SettingLand$12;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand$12;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/mycompany/app/setting/SettingLand$LocalChromeClient;

    .line 21
    .line 22
    invoke-direct {v3, v1}, Lcom/mycompany/app/setting/SettingLand$LocalChromeClient;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$12;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingLand$12$1$1$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingLand$12$1$1$1;-><init>(Lcom/mycompany/app/setting/SettingLand$12$1$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
