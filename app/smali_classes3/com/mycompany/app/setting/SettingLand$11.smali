.class Lcom/mycompany/app/setting/SettingLand$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$11;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$11;->c:Lcom/mycompany/app/setting/SettingLand;

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
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingLand;->J0(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
