.class Lcom/mycompany/app/setting/SettingCustom$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCustom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$15;->c:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$15;->c:Lcom/mycompany/app/setting/SettingCustom;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditUp;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
