.class Lcom/mycompany/app/setting/SettingLand$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalChromeClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalChromeClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mycompany/app/setting/SettingLand;->J0(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
