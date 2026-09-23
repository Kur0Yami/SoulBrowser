.class Lcom/mycompany/app/setting/SettingWeb$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingWeb$9;->c:Lcom/mycompany/app/setting/SettingWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingWeb$9;->c:Lcom/mycompany/app/setting/SettingWeb;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->h0:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, p1, Lcom/mycompany/app/setting/SettingWeb;->Y1:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekWeb;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 18
    .line 19
    :cond_1
    return-void
.end method
